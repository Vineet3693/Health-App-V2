// API constants
// File: mobile/lib/core/constants/api_constants.dart

/// API endpoint constants
class ApiConstants {
  ApiConstants._();

  // API Version
  static const String apiVersion = 'v1';
  
  // Endpoints - Auth
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String logout = '/auth/logout';
  static const String refreshToken = '/auth/refresh';
  static const String forgotPassword = '/auth/forgot-password';
  static const String resetPassword = '/auth/reset-password';
  static const String verifyEmail = '/auth/verify-email';
  static const String changePassword = '/auth/change-password';

  // Endpoints - User
  static const String userProfile = '/users/profile';
  static const String updateProfile = '/users/profile';
  static const String uploadAvatar = '/users/avatar';
  static const String userPreferences = '/users/preferences';
  static const String healthConditions = '/users/health-conditions';

  // Endpoints - Health
  static const String vitals = '/health/vitals';
  static const String sleepLogs = '/health/sleep';
  static const String waterIntake = '/health/water';
  static const String weightLogs = '/health/weight';
  static const String medications = '/health/medications';

  // Endpoints - Nutrition
  static const String meals = '/nutrition/meals';
  static const String foods = '/nutrition/foods';
  static const String recipes = '/nutrition/recipes';
  static const String searchFoods = '/nutrition/foods/search';
  static const String scanBarcode = '/nutrition/foods/scan';

  // Endpoints - Fitness
  static const String workouts = '/fitness/workouts';
  static const String exercises = '/fitness/exercises';
  static const String workoutPlans = '/fitness/plans';
  static const String challenges = '/fitness/challenges';

  // Endpoints - Telehealth
  static const String doctors = '/telehealth/doctors';
  static const String appointments = '/telehealth/appointments';
  static const String prescriptions = '/telehealth/prescriptions';
  static const String videoCallToken = '/telehealth/video-token';

  // Endpoints - Mental Health
  static const String moodLogs = '/mental-health/mood';
  static const String journalEntries = '/mental-health/journal';
  static const String meditations = '/mental-health/meditations';

  // Endpoints - Community
  static const String community = '/community';
  static const String leaderboard = '/community/leaderboard';

  // Endpoints - AI/ML
  static const String healthScore = '/ai/health-score';
  static const String recommendations = '/ai/recommendations';
  static const String predictions = '/ai/predictions';
  static const String symptomChecker = '/ai/symptom-checker';

  // Pagination
  static const int defaultPage = 1;
  static const int defaultLimit = 20;
}

/// HTTP headers
class HttpHeaders {
  HttpHeaders._();

  static const String contentType = 'Content-Type';
  static const String authorization = 'Authorization';
  static const String accept = 'Accept';
  static const String applicationJson = 'application/json';
  static const String bearer = 'Bearer';
}

/// API response codes
class ResponseCodes {
  ResponseCodes._();

  static const int success = 200;
  static const int created = 201;
  static const int noContent = 204;
  static const int badRequest = 400;
  static const int unauthorized = 401;
  static const int forbidden = 403;
  static const int notFound = 404;
  static const int conflict = 409;
  static const int serverError = 500;
  static const int serviceUnavailable = 503;
}
