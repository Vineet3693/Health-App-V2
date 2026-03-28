import 'package:dio/dio.dart';
import '../errors/exceptions.dart';
import 'api_client.dart';

/// Interceptor for handling API requests and responses
class ApiInterceptor extends Interceptor {
  final ApiClient _client;

  ApiInterceptor(this._client);

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Add auth token if available
    final authToken = _client.authToken;
    if (authToken != null) {
      options.headers['Authorization'] = 'Bearer $authToken';
    }

    // Add request timestamp for debugging
    options.extra['requestTime'] = DateTime.now().millisecondsSinceEpoch;

    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // Log successful response time
    final requestTime = response.requestOptions.extra['requestTime'] as int?;
    if (requestTime != null) {
      final responseTime = DateTime.now().millisecondsSinceEpoch - requestTime;
      // Can be used for logging or analytics
    }

    // Check for API-level errors in response body
    if (response.data is Map<String, dynamic>) {
      final data = response.data as Map<String, dynamic>;
      
      if (data['success'] == false) {
        final error = data['error'] as Map<String, dynamic>?;
        final code = error?['code'] as String? ?? 'UNKNOWN_ERROR';
        final message = error?['message'] as String? ?? 'An unknown error occurred';
        
        handler.reject(
          DioException(
            requestOptions: response.requestOptions,
            response: response,
            type: DioExceptionType.badResponse,
            error: ApiException(message, code),
          ),
        );
        return;
      }
    }

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Transform Dio exceptions to app-specific exceptions
    Exception exception;

    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        exception = TimeoutException('Connection timeout');
        break;

      case DioExceptionType.badResponse:
        exception = _handleBadResponse(err.response);
        break;

      case DioExceptionType.cancel:
        exception = CancelledException('Request cancelled');
        break;

      case DioExceptionType.connectionError:
        exception = NoInternetException('No internet connection');
        break;

      case DioExceptionType.badCertificate:
        exception = ApiException('Invalid SSL certificate', 'SSL_ERROR');
        break;

      case DioExceptionType.unknown:
      default:
        exception = ServerException('Unknown error occurred: ${err.message}');
        break;
    }

    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        response: err.response,
        type: err.type,
        error: exception,
        message: err.message,
      ),
    );
  }

  /// Handle bad HTTP responses
  Exception _handleBadResponse(Response? response) {
    if (response == null) {
      return ServerException('No response received');
    }

    switch (response.statusCode) {
      case 400:
        final message = _extractErrorMessage(response.data);
        return BadRequestException(message);

      case 401:
        return UnauthorizedException('Unauthorized. Please login again.');

      case 403:
        return ForbiddenException('Access denied');

      case 404:
        return NotFoundException('Resource not found');

      case 409:
        return ConflictException('Conflict occurred');

      case 422:
        final message = _extractErrorMessage(response.data);
        return ValidationException(message);

      case 429:
        return RateLimitException('Too many requests. Please try again later.');

      case 500:
        return ServerException('Internal server error');

      case 502:
        return ServerException('Bad gateway');

      case 503:
        return ServerException('Service unavailable');

      default:
        return ServerException(
          'Unexpected error: ${response.statusCode}',
        );
    }
  }

  /// Extract error message from response data
  String _extractErrorMessage(dynamic data) {
    if (data is Map<String, dynamic>) {
      if (data['error'] is Map<String, dynamic>) {
        return data['error']['message'] as String? ?? 'An error occurred';
      }
      if (data['message'] is String) {
        return data['message'];
      }
      if (data['errors'] is List) {
        final errors = data['errors'] as List;
        if (errors.isNotEmpty && errors.first is String) {
          return errors.first;
        }
      }
    }
    return 'An error occurred';
  }
}