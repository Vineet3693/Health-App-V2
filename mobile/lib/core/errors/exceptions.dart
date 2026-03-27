/// Base exception class for all custom exceptions
abstract class AppException implements Exception {
  final String message;
  final String? code;
  final dynamic originalError;
  final StackTrace? stackTrace;

  const AppException({
    required this.message,
    this.code,
    this.originalError,
    this.stackTrace,
  });

  @override
  String toString() {
    if (code != null) {
      return '$runtimeType [$code]: $message';
    }
    return '$runtimeType: $message';
  }
}

/// Exception thrown when network connection is unavailable
class NetworkException extends AppException {
  const NetworkException({
    String message = 'No internet connection. Please check your network.',
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: 'NETWORK_ERROR',
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Exception thrown when server returns an error response
class ServerException extends AppException {
  final int? statusCode;

  const ServerException({
    required String message,
    this.statusCode,
    String? code,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code ?? 'SERVER_ERROR',
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Exception thrown when authentication fails
class AuthenticationException extends AppException {
  const AuthenticationException({
    String message = 'Authentication failed. Please login again.',
    String? code,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code ?? 'AUTH_ERROR',
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Exception thrown when user doesn't have permission
class UnauthorizedException extends AppException {
  const UnauthorizedException({
    String message = 'You don\'t have permission to access this resource.',
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: 'UNAUTHORIZED',
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Exception thrown when resource is not found
class NotFoundException extends AppException {
  const NotFoundException({
    String message = 'The requested resource was not found.',
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: 'NOT_FOUND',
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Exception thrown when request times out
class TimeoutException extends AppException {
  const TimeoutException({
    String message = 'Request timed out. Please try again.',
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: 'TIMEOUT',
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Exception thrown when data validation fails
class ValidationException extends AppException {
  final Map<String, List<String>>? errors;

  const ValidationException({
    required String message,
    this.errors,
    String code = 'VALIDATION_ERROR',
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Exception thrown when cache operation fails
class CacheException extends AppException {
  const CacheException({
    String message = 'Cache operation failed.',
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: 'CACHE_ERROR',
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Exception thrown when database operation fails
class DatabaseException extends AppException {
  const DatabaseException({
    String message = 'Database operation failed.',
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: 'DATABASE_ERROR',
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Exception thrown for unknown errors
class UnknownException extends AppException {
  const UnknownException({
    String message = 'An unexpected error occurred.',
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: 'UNKNOWN_ERROR',
          originalError: originalError,
          stackTrace: stackTrace,
        );
}