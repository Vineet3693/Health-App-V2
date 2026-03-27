import 'package:equatable/equatable.dart';

/// Base failure class for all failures in the app
abstract class Failure extends Equatable {
  final String message;
  final String? code;

  const Failure({
    required this.message,
    this.code,
  });

  @override
  List<Object?> get props => [message, code];

  @override
  String toString() {
    if (code != null) {
      return '$runtimeType [$code]: $message';
    }
    return '$runtimeType: $message';
  }
}

/// Failure for network related errors
class NetworkFailure extends Failure {
  const NetworkFailure({
    String message = 'No internet connection. Please check your network.',
    String code = 'NETWORK_ERROR',
  }) : super(message: message, code: code);
}

/// Failure for server related errors
class ServerFailure extends Failure {
  final int? statusCode;

  const ServerFailure({
    required String message,
    this.statusCode,
    String code = 'SERVER_ERROR',
  }) : super(message: message, code: code);

  @override
  List<Object?> get props => [message, code, statusCode];
}

/// Failure for authentication errors
class AuthenticationFailure extends Failure {
  const AuthenticationFailure({
    String message = 'Authentication failed. Please login again.',
    String code = 'AUTH_ERROR',
  }) : super(message: message, code: code);
}

/// Failure for unauthorized access
class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure({
    String message = 'You don\'t have permission to access this resource.',
    String code = 'UNAUTHORIZED',
  }) : super(message: message, code: code);
}

/// Failure when resource is not found
class NotFoundFailure extends Failure {
  const NotFoundFailure({
    String message = 'The requested resource was not found.',
    String code = 'NOT_FOUND',
  }) : super(message: message, code: code);
}

/// Failure for timeout errors
class TimeoutFailure extends Failure {
  const TimeoutFailure({
    String message = 'Request timed out. Please try again.',
    String code = 'TIMEOUT',
  }) : super(message: message, code: code);
}

/// Failure for validation errors
class ValidationFailure extends Failure {
  final Map<String, List<String>>? errors;

  const ValidationFailure({
    required String message,
    this.errors,
    String code = 'VALIDATION_ERROR',
  }) : super(message: message, code: code);

  @override
  List<Object?> get props => [message, code, errors];
}

/// Failure for cache errors
class CacheFailure extends Failure {
  const CacheFailure({
    String message = 'Cache operation failed.',
    String code = 'CACHE_ERROR',
  }) : super(message: message, code: code);
}

/// Failure for database errors
class DatabaseFailure extends Failure {
  const DatabaseFailure({
    String message = 'Database operation failed.',
    String code = 'DATABASE_ERROR',
  }) : super(message: message, code: code);
}

/// Failure for unknown errors
class UnknownFailure extends Failure {
  const UnknownFailure({
    String message = 'An unexpected error occurred.',
    String code = 'UNKNOWN_ERROR',
  }) : super(message: message, code: code);
}