// Application constants
// File: mobile/lib/core/constants/app_constants.dart

/// General application constants
class AppConstants {
  AppConstants._();

  // App Info
  static const String appName = 'HealthApp';
  static const String appVersion = '1.0.0';
  static const int versionCode = 1;

  // Storage Keys
  static const String authTokenKey = 'auth_token';
  static const String refreshTokenKey = 'refresh_token';
  static const String userPreferencesKey = 'user_preferences';
  static const String onboardingCompleteKey = 'onboarding_complete';
  static const String themeModeKey = 'theme_mode';
  static const String languageCodeKey = 'language_code';

  // Hive Box Names
  static const String userBox = 'user_box';
  static const String settingsBox = 'settings_box';
  static const String cacheBox = 'cache_box';
  static const String healthDataBox = 'health_data_box';

  // Date Formats
  static const String dateFormat = 'dd/MM/yyyy';
  static const String dateTimeFormat = 'dd/MM/yyyy HH:mm';
  static const String timeFormat = 'HH:mm';
  static const String apiDateFormat = 'yyyy-MM-dd';
  static const String apiDateTimeFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'";

  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;

  // Validation
  static const int minPasswordLength = 8;
  static const int maxPasswordLength = 128;
  static const int minUsernameLength = 3;
  static const int maxUsernameLength = 50;

  // Health Goals
  static const int defaultDailyWaterGoal = 8; // glasses
  static const int defaultDailyCalorieGoal = 2000; // kcal
  static const int defaultDailyStepGoal = 10000; // steps
  static const int defaultSleepGoal = 8; // hours

  // Units
  static const String weightUnitKg = 'kg';
  static const String weightUnitLb = 'lb';
  static const String heightUnitCm = 'cm';
  static const String heightUnitFt = 'ft';
  static const String temperatureUnitC = '°C';
  static const String temperatureUnitF = '°F';

  // Cache Duration (in seconds)
  static const int cacheShort = 300; // 5 minutes
  static const int cacheMedium = 1800; // 30 minutes
  static const int cacheLong = 3600; // 1 hour
  static const int cacheVeryLong = 86400; // 24 hours

  // Animation Durations
  static const int animationDurationShort = 200; // ms
  static const int animationDurationMedium = 300; // ms
  static const int animationDurationLong = 500; // ms

  // Debounce/Delay
  static const int debounceDuration = 300; // ms
  static const int searchDebounce = 500; // ms

  // Image Constraints
  static const int maxImageSize = 5 * 1024 * 1024; // 5 MB
  static const List<String> allowedImageTypes = ['jpg', 'jpeg', 'png', 'webp'];

  // Social Media
  static const String facebookAppId = 'your_facebook_app_id';
  static const String googleClientId = 'your_google_client_id';

  // Video Call
  static const int maxCallDuration = 3600; // 1 hour in seconds
  static const int reconnectAttempts = 3;
}

/// Error messages
class ErrorMessages {
  ErrorMessages._();

  static const String genericError = 'Something went wrong. Please try again.';
  static const String networkError = 'No internet connection. Please check your network.';
  static const String timeoutError = 'Request timed out. Please try again.';
  static const String unauthorizedError = 'Please login to continue.';
  static const String forbiddenError = 'You do not have permission to perform this action.';
  static const String notFoundError = 'The requested resource was not found.';
  static const String serverError = 'Server error. Please try again later.';
  static const String invalidCredentials = 'Invalid email or password.';
  static const String emailAlreadyExists = 'An account with this email already exists.';
  static const String weakPassword = 'Password is too weak.';
  static const String invalidEmail = 'Please enter a valid email address.';
  static const String requiredField = 'This field is required.';
}

/// Success messages
class SuccessMessages {
  SuccessMessages._();

  static const String loginSuccess = 'Welcome back!';
  static const String registerSuccess = 'Account created successfully!';
  static const String logoutSuccess = 'Logged out successfully.';
  static const String profileUpdateSuccess = 'Profile updated successfully.';
  static const String passwordChangeSuccess = 'Password changed successfully.';
  static const String dataSavedSuccess = 'Data saved successfully.';
  static const String dataDeletedSuccess = 'Data deleted successfully.';
  static const String appointmentBooked = 'Appointment booked successfully.';
}
