import 'package:dio/dio.dart';
import '../config/environment.dart';
import '../constants/api_constants.dart';
import 'api_interceptor.dart';
import 'network_info.dart';

/// Abstract class defining the contract for API client implementation
abstract class ApiClientContract {
  Future<Response> get(String path, {Map<String, dynamic>? queryParameters});
  Future<Response> post(String path, {dynamic data});
  Future<Response> put(String path, {dynamic data});
  Future<Response> patch(String path, {dynamic data});
  Future<Response> delete(String path);
  void setAuthToken(String token);
  void clearAuthToken();
}

/// Main API client implementation using Dio
class ApiClient implements ApiClientContract {
  late final Dio _dio;
  final NetworkInfoContract _networkInfo;
  String? _authToken;

  ApiClient({required NetworkInfoContract networkInfo})
      : _networkInfo = networkInfo {
    _dio = Dio(BaseOptions(
      baseUrl: Environment.baseUrl,
      connectTimeout: const Duration(seconds: ApiConstants.connectionTimeout),
      receiveTimeout: const Duration(seconds: ApiConstants.receiveTimeout),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    ));

    // Add interceptors
    _dio.interceptors.add(ApiInterceptor(this));
    _dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      error: true,
      compact: false,
    ));
  }

  @override
  void setAuthToken(String token) {
    _authToken = token;
  }

  @override
  void clearAuthToken() {
    _authToken = null;
  }

  /// Get current authentication token
  String? get authToken => _authToken;

  /// Check if network is available
  Future<bool> get isConnected async => await _networkInfo.isConnected;

  @override
  Future<Response> get(String path, {Map<String, dynamic>? queryParameters}) async {
    if (!await isConnected) {
      throw NoInternetException('No internet connection');
    }

    return await _dio.get(
      path,
      queryParameters: queryParameters,
      options: _getOptions(),
    );
  }

  @override
  Future<Response> post(String path, {dynamic data}) async {
    if (!await isConnected) {
      throw NoInternetException('No internet connection');
    }

    return await _dio.post(
      path,
      data: data,
      options: _getOptions(),
    );
  }

  @override
  Future<Response> put(String path, {dynamic data}) async {
    if (!await isConnected) {
      throw NoInternetException('No internet connection');
    }

    return await _dio.put(
      path,
      data: data,
      options: _getOptions(),
    );
  }

  @override
  Future<Response> patch(String path, {dynamic data}) async {
    if (!await isConnected) {
      throw NoInternetException('No internet connection');
    }

    return await _dio.patch(
      path,
      data: data,
      options: _getOptions(),
    );
  }

  @override
  Future<Response> delete(String path) async {
    if (!await isConnected) {
      throw NoInternetException('No internet connection');
    }

    return await _dio.delete(
      path,
      options: _getOptions(),
    );
  }

  /// Build options with auth header if token exists
  Options _getOptions() {
    final headers = <String, dynamic>{};
    
    if (_authToken != null) {
      headers['Authorization'] = 'Bearer $_authToken';
    }

    return Options(headers: headers);
  }

  /// Download file from URL
  Future<void> downloadFile(String url, String savePath) async {
    if (!await isConnected) {
      throw NoInternetException('No internet connection');
    }

    await _dio.download(
      url,
      savePath,
      options: _getOptions(),
    );
  }

  /// Upload file to server
  Future<Response> uploadFile(String path, String filePath, {Map<String, dynamic>? data}) async {
    if (!await isConnected) {
      throw NoInternetException('No internet connection');
    }

    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(filePath),
      if (data != null) ...data,
    });

    return await _dio.post(
      path,
      data: formData,
      options: _getOptions(),
    );
  }
}