// Application configuration
// File: mobile/lib/core/config/app_config.dart

/// Centralized application configuration
class AppConfig {
  AppConfig._();

  static const String appName = 'HealthApp';
  static const String appVersion = '1.0.0';
  
  // API Configuration
  static const String apiBaseUrl = String.fromEnvironment(
    'API_BASE_URL',
    defaultValue: 'http://localhost:3000/api/v1',
  );
  
  static const Duration connectionTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  
  // Feature Flags
  static const bool enableDebugMode = bool.fromEnvironment(
    'DEBUG_MODE',
    defaultValue: true,
  );
  
  static const bool enableAnalytics = bool.fromEnvironment(
    'ENABLE_ANALYTICS',
    defaultValue: true,
  );
  
  // Cache Configuration
  static const int cacheMaxAge = 3600; // 1 hour in seconds
  static const int maxCacheSize = 100 * 1024 * 1024; // 100 MB
  
  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;
  
  // Health Score Weights
  static const double vitalsWeight = 0.3;
  static const double nutritionWeight = 0.25;
  static const double fitnessWeight = 0.25;
  static const double mentalHealthWeight = 0.2;
  
  // Notification Settings
  static const String defaultNotificationChannelId = 'health_app_channel';
  static const String defaultNotificationChannelName = 'Health Notifications';
}
