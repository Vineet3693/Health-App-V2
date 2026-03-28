import 'package:internet_connection_checker/internet_connection_checker.dart';

/// Abstract class defining the contract for network information
abstract class NetworkInfoContract {
  Future<bool> get isConnected;
  Future<bool> get isConnectionAvailable;
}

/// Implementation of NetworkInfoContract using internet_connection_checker
class NetworkInfo implements NetworkInfoContract {
  final InternetConnectionChecker _connectionChecker;

  NetworkInfo({InternetConnectionChecker? connectionChecker})
      : _connectionChecker = connectionChecker ?? InternetConnectionChecker();

  @override
  Future<bool> get isConnected async => await _connectionChecker.hasConnection;

  @override
  Future<bool> get isConnectionAvailable async => await isConnected;

  /// Stream of connection status changes
  Stream<bool> get onConnectionChange => _connectionChecker.onStatusChange.map(
        (status) => status == InternetConnectionStatus.connected,
      );
}