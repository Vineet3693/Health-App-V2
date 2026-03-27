// API Interceptor for handling requests and responses
// File: mobile/lib/core/network/api_interceptor.dart

import 'package:dio/dio.dart';
import '../constants/app_constants.dart';

/// Custom Dio interceptor for request/response handling
class ApiInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Add timestamp to prevent caching
    options.queryParameters['timestamp'] = DateTime.now().millisecondsSinceEpoch;
    
    // Log request
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // Log response
    print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Log error
    print('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    print('ERROR MESSAGE: ${err.message}');
    
    handler.next(err);
  }
}
