class AppConstants {
  // App Info
  static const String appName = 'Health & Wellness';
  static const String appVersion = '1.0.0';
  static const String appBuildNumber = '1';
  
  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;
  
  // Cache
  static const int cacheDurationMinutes = 30;
  static const int imageCacheSizeMB = 100;
  
  // Timeouts
  static const int connectionTimeoutSeconds = 30;
  static const int receiveTimeoutSeconds = 30;
  static const int sendTimeoutSeconds = 30;
  
  // Retry
  static const int maxRetryAttempts = 3;
  static const int retryDelayMilliseconds = 1000;
  
  // Date Formats
  static const String dateFormat = 'yyyy-MM-dd';
  static const String dateTimeFormat = 'yyyy-MM-dd HH:mm:ss';
  static const String timeFormat = 'HH:mm';
  static const String monthYearFormat = 'MMMM yyyy';
  
  // Validation
  static const int minPasswordLength = 8;
  static const int maxPasswordLength = 128;
  static const int minUsernameLength = 3;
  static const int maxUsernameLength = 50;
  
  // Health Constants
  static const double defaultWaterGoalLiters = 2.0;
  static const int defaultSleepGoalHours = 8;
  static const int defaultStepsGoal = 10000;
  static const int defaultCalorieGoal = 2000;
  
  // Weight Units
  static const String unitKilograms = 'kg';
  static const String unitPounds = 'lbs';
  
  // Height Units
  static const String unitCentimeters = 'cm';
  static const String unitFeetInches = 'ft/in';
  
  // Temperature Units
  static const String unitCelsius = '°C';
  static const String unitFahrenheit = '°F';
  
  // Distance Units
  static const String unitKilometers = 'km';
  static const String unitMiles = 'mi';
  
  // Social Login Providers
  static const String providerGoogle = 'google';
  static const String providerApple = 'apple';
  static const String providerFacebook = 'facebook';
  
  // Notification Channels
  static const String channelMedicationReminders = 'medication_reminders';
  static const String channelWaterReminders = 'water_reminders';
  static const String channelWorkoutReminders = 'workout_reminders';
  static const String channelAppointmentReminders = 'appointment_reminders';
  static const String channelGeneral = 'general';
  
  // Error Messages
  static const String errorNetwork = 'No internet connection. Please check your network.';
  static const String errorServer = 'Server error. Please try again later.';
  static const String errorUnauthorized = 'Session expired. Please login again.';
  static const String errorForbidden = 'You don\'t have permission to access this resource.';
  static const String errorNotFound = 'The requested resource was not found.';
  static const String errorTimeout = 'Request timed out. Please try again.';
  static const String errorUnknown = 'An unexpected error occurred.';
  
  // Success Messages
  static const String successLogin = 'Welcome back!';
  static const String successRegister = 'Account created successfully!';
  static const String successLogout = 'Logged out successfully.';
  static const String successProfileUpdate = 'Profile updated successfully.';
  static const String successPasswordChange = 'Password changed successfully.';
  
  // Onboarding
  static const int onboardingPageCount = 4;
  
  // Session
  static const int sessionTimeoutMinutes = 30;
  static const String keyAccessToken = 'access_token';
  static const String keyRefreshToken = 'refresh_token';
  static const String keyTokenExpiry = 'token_expiry';
  static const String keyUserId = 'user_id';
  static const String keyUserEmail = 'user_email';
  
  // Storage Keys
  static const String keyOnboardingComplete = 'onboarding_complete';
  static const String keyTheme = 'theme_mode';
  static const String keyLanguage = 'language';
  static const String keyNotificationsEnabled = 'notifications_enabled';
  static const String keyBiometricEnabled = 'biometric_enabled';
}