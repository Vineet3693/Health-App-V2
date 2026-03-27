// Environment configuration
// File: mobile/lib/core/config/environment.dart

/// Environment configuration for different build flavors
enum Environment { development, staging, production }

class EnvironmentConfig {
  EnvironmentConfig._();

  static Environment _currentEnvironment = Environment.development;

  static void setEnvironment(Environment environment) {
    _currentEnvironment = environment;
  }

  static Environment get current => _currentEnvironment;

  static String get apiBaseUrl {
    switch (_currentEnvironment) {
      case Environment.development:
        return const String.fromEnvironment(
          'DEV_API_URL',
          defaultValue: 'http://localhost:3000/api/v1',
        );
      case Environment.staging:
        return const String.fromEnvironment(
          'STAGING_API_URL',
          defaultValue: 'https://staging-api.healthapp.com/api/v1',
        );
      case Environment.production:
        return const String.fromEnvironment(
          'PROD_API_URL',
          defaultValue: 'https://api.healthapp.com/api/v1',
        );
    }
  }

  static bool get enableLogging {
    switch (_currentEnvironment) {
      case Environment.development:
        return true;
      case Environment.staging:
        return true;
      case Environment.production:
        return false;
    }
  }

  static bool get enableDebugFeatures {
    switch (_currentEnvironment) {
      case Environment.development:
        return true;
      case Environment.staging:
        return true;
      case Environment.production:
        return false;
    }
  }

  static String get firebaseProjectId {
    switch (_currentEnvironment) {
      case Environment.development:
        return 'healthapp-dev';
      case Environment.staging:
        return 'healthapp-staging';
      case Environment.production:
        return 'healthapp-prod';
    }
  }

  static String get agoraAppId {
    switch (_currentEnvironment) {
      case Environment.development:
        return const String.fromEnvironment('DEV_AGORA_APP_ID', defaultValue: '');
      case Environment.staging:
        return const String.fromEnvironment('STAGING_AGORA_APP_ID', defaultValue: '');
      case Environment.production:
        return const String.fromEnvironment('PROD_AGORA_APP_ID', defaultValue: '');
    }
  }
}
