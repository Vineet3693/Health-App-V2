// Domain failures for Clean Architecture
// File: mobile/lib/core/errors/failures.dart

import 'package:equatable/equatable.dart';

/// Base failure class for domain layer errors
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

/// Server failure - when server returns an error
class ServerFailure extends Failure {
  final int statusCode;

  const ServerFailure({
    required String message,
    required this.statusCode,
    String? code,
  }) : super(message: message, code: code);

  @override
  List<Object?> get props => [message, statusCode, code];
}

/// Network failure - when network request fails
class NetworkFailure extends Failure {
  const NetworkFailure({
    String message = 'No internet connection',
    String? code,
  }) : super(message: message, code: code);
}

/// Authentication failure - when authentication fails
class AuthFailure extends Failure {
  const AuthFailure({
    String message = 'Authentication failed',
    String? code,
  }) : super(message: message, code: code);
}

/// Unauthorized failure - when user is not authorized
class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure({
    String message = 'Unauthorized access',
    String? code,
  }) : super(message: message, code: code);
}

/// Validation failure - when input validation fails
class ValidationFailure extends Failure {
  final Map<String, List<String>>? errors;

  const ValidationFailure({
    String message = 'Validation failed',
    this.errors,
    String? code,
  }) : super(message: message, code: code);

  @override
  List<Object?> get props => [message, errors, code];
}

/// Cache failure - when cache operation fails
class CacheFailure extends Failure {
  const CacheFailure({
    String message = 'Cache operation failed',
    String? code,
  }) : super(message: message, code: code);
}

/// Not found failure - when resource is not found
class NotFoundFailure extends Failure {
  const NotFoundFailure({
    String message = 'Resource not found',
    String? code,
  }) : super(message: message, code: code);
}

/// Conflict failure - when there's a conflict
class ConflictFailure extends Failure {
  const ConflictFailure({
    String message = 'Conflict occurred',
    String? code,
  }) : super(message: message, code: code);
}

/// Timeout failure - when request times out
class TimeoutFailure extends Failure {
  const TimeoutFailure({
    String message = 'Request timed out',
    String? code,
  }) : super(message: message, code: code);
}

/// Permission denied failure
class PermissionDeniedFailure extends Failure {
  const PermissionDeniedFailure({
    String message = 'Permission denied',
    String? code,
  }) : super(message: message, code: code);
}

/// Video call failure
class VideoCallFailure extends Failure {
  const VideoCallFailure({
    String message = 'Video call failed',
    String? code,
  }) : super(message: message, code: code);
}

/// Payment failure
class PaymentFailure extends Failure {
  const PaymentFailure({
    String message = 'Payment failed',
    String? code,
  }) : super(message: message, code: code);
}

/// Database failure - when local database operation fails
class DatabaseFailure extends Failure {
  const DatabaseFailure({
    String message = 'Database operation failed',
    String? code,
  }) : super(message: message, code: code);
}

/// Generic failure - for any other errors
class GenericFailure extends Failure {
  const GenericFailure({
    String message = 'An unexpected error occurred',
    String? code,
  }) : super(message: message, code: code);
}
