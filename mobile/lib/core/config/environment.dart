import 'package:flutter/foundation.dart';

enum Environment { development, staging, production }

class EnvironmentConfig {
  static const Environment current = Environment.development;

  static String get baseUrl {
    switch (current) {
      case Environment.production:
        return 'https://api.healthapp.com';
      case Environment.staging:
        return 'https://staging-api.healthapp.com';
      case Environment.development:
        return kDebugMode ? 'http://localhost:3000' : 'http://10.0.2.2:3000';
    }
  }

  static String get appName => 'Health & Wellness';
  static String get appVersion => '1.0.0';
  static int get sessionTimeoutMinutes => 30;
  static bool get enableLogging => current != Environment.production;
  static int get maxCacheSizeMB => 100;
  static Duration get apiTimeout => const Duration(seconds: 30);
  static int get maxRetryAttempts => 3;
}