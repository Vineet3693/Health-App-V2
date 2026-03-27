// Network connectivity checker
// File: mobile/lib/core/network/network_info.dart

import 'package:connectivity_plus/connectivity_plus.dart';

/// Abstract class for network information
abstract class NetworkInfo {
  Future<bool> get isConnected;
  Future<bool> get isWifiConnected;
  Future<ConnectivityResult> get connectionType;
}

/// Implementation of NetworkInfo using connectivity_plus
class NetworkInfoImpl implements NetworkInfo {
  final Connectivity _connectivity;

  NetworkInfoImpl({Connectivity? connectivity})
      : _connectivity = connectivity ?? Connectivity();

  @override
  Future<bool> get isConnected async {
    final result = await _connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  }

  @override
  Future<bool> get isWifiConnected async {
    final result = await _connectivity.checkConnectivity();
    return result == ConnectivityResult.wifi;
  }

  @override
  Future<ConnectivityResult> get connectionType async {
    return await _connectivity.checkConnectivity();
  }
}
