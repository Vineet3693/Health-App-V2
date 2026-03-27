// Dependency Injection Container
// File: mobile/lib/di/injection_container.dart

import 'package:get_it/get_it.dart';
import '../core/network/api_client.dart';
import '../core/network/network_info.dart';

final GetIt sl = GetIt.instance;

Future<void> configureDependencies() async {
  // Core
  sl.registerLazySingleton<ApiClient>(() => ApiClient());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());

  // Repositories will be registered here
  
  // Use Cases will be registered here
  
  // BLoCs will be registered here
}
