// Custom exceptions
// File: mobile/lib/core/errors/exceptions.dart

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

/// Server exception - thrown when server returns an error
class ServerException extends AppException {
  final int statusCode;

  const ServerException({
    required String message,
    required this.statusCode,
    String? code,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Network exception - thrown when network request fails
class NetworkException extends AppException {
  const NetworkException({
    String message = 'No internet connection',
    String? code,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Authentication exception - thrown when authentication fails
class AuthException extends AppException {
  const AuthException({
    String message = 'Authentication failed',
    String? code,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Unauthorized exception - thrown when user is not authorized
class UnauthorizedException extends AppException {
  const UnauthorizedException({
    String message = 'Unauthorized access',
    String? code,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Validation exception - thrown when input validation fails
class ValidationException extends AppException {
  final Map<String, List<String>>? errors;

  const ValidationException({
    String message = 'Validation failed',
    this.errors,
    String? code,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Cache exception - thrown when cache operation fails
class CacheException extends AppException {
  const CacheException({
    String message = 'Cache operation failed',
    String? code,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Not found exception - thrown when resource is not found
class NotFoundException extends AppException {
  const NotFoundException({
    String message = 'Resource not found',
    String? code,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Conflict exception - thrown when there's a conflict
class ConflictException extends AppException {
  const ConflictException({
    String message = 'Conflict occurred',
    String? code,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Timeout exception - thrown when request times out
class TimeoutException extends AppException {
  const TimeoutException({
    String message = 'Request timed out',
    String? code,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Permission denied exception
class PermissionDeniedException extends AppException {
  const PermissionDeniedException({
    String message = 'Permission denied',
    String? code,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Video call exception
class VideoCallException extends AppException {
  const VideoCallException({
    String message = 'Video call failed',
    String? code,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          originalError: originalError,
          stackTrace: stackTrace,
        );
}

/// Payment exception
class PaymentException extends AppException {
  const PaymentException({
    String message = 'Payment failed',
    String? code,
    dynamic originalError,
    StackTrace? stackTrace,
  }) : super(
          message: message,
          code: code,
          originalError: originalError,
          stackTrace: stackTrace,
        );
}
