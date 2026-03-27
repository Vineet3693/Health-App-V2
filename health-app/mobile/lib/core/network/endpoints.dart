// API endpoints configuration
// File: mobile/lib/core/network/endpoints.dart

/// API endpoint URLs
class Endpoints {
  Endpoints._();

  // Base URL will be prepended to all endpoints
  static const String baseUrl = '/api/v1';

  // Auth endpoints
  static const String login = '$baseUrl/auth/login';
  static const String register = '$baseUrl/auth/register';
  static const String logout = '$baseUrl/auth/logout';
  static const String refreshToken = '$baseUrl/auth/refresh';
  static const String forgotPassword = '$baseUrl/auth/forgot-password';
  static const String resetPassword = '$baseUrl/auth/reset-password';
  static const String verifyEmail = '$baseUrl/auth/verify-email';
  static const String changePassword = '$baseUrl/auth/change-password';
  static const String socialLogin = '$baseUrl/auth/social';

  // User endpoints
  static const String userProfile = '$baseUrl/users/profile';
  static const String updateProfile = '$baseUrl/users/profile';
  static const String uploadAvatar = '$baseUrl/users/avatar';
  static const String userPreferences = '$baseUrl/users/preferences';
  static const String healthConditions = '$baseUrl/users/health-conditions';
  static const String users = '$baseUrl/users';
  static const String userById = '$baseUrl/users/:id';

  // Health endpoints
  static const String vitals = '$baseUrl/health/vitals';
  static const String vitalById = '$baseUrl/health/vitals/:id';
  static const String sleepLogs = '$baseUrl/health/sleep';
  static const String sleepLogById = '$baseUrl/health/sleep/:id';
  static const String waterIntake = '$baseUrl/health/water';
  static const String waterIntakeById = '$baseUrl/health/water/:id';
  static const String weightLogs = '$baseUrl/health/weight';
  static const String weightLogById = '$baseUrl/health/weight/:id';
  static const String medications = '$baseUrl/health/medications';
  static const String medicationById = '$baseUrl/health/medications/:id';

  // Nutrition endpoints
  static const String meals = '$baseUrl/nutrition/meals';
  static const String mealById = '$baseUrl/nutrition/meals/:id';
  static const String foods = '$baseUrl/nutrition/foods';
  static const String foodById = '$baseUrl/nutrition/foods/:id';
  static const String searchFoods = '$baseUrl/nutrition/foods/search';
  static const String scanBarcode = '$baseUrl/nutrition/foods/scan';
  static const String recipes = '$baseUrl/nutrition/recipes';
  static const String recipeById = '$baseUrl/nutrition/recipes/:id';

  // Fitness endpoints
  static const String workouts = '$baseUrl/fitness/workouts';
  static const String workoutById = '$baseUrl/fitness/workouts/:id';
  static const String exercises = '$baseUrl/fitness/exercises';
  static const String exerciseById = '$baseUrl/fitness/exercises/:id';
  static const String workoutPlans = '$baseUrl/fitness/plans';
  static const String workoutPlanById = '$baseUrl/fitness/plans/:id';
  static const String challenges = '$baseUrl/fitness/challenges';
  static const String challengeById = '$baseUrl/fitness/challenges/:id';

  // Telehealth endpoints
  static const String doctors = '$baseUrl/telehealth/doctors';
  static const String doctorById = '$baseUrl/telehealth/doctors/:id';
  static const String appointments = '$baseUrl/telehealth/appointments';
  static const String appointmentById = '$baseUrl/telehealth/appointments/:id';
  static const String prescriptions = '$baseUrl/telehealth/prescriptions';
  static const String prescriptionById = '$baseUrl/telehealth/prescriptions/:id';
  static const String videoCallToken = '$baseUrl/telehealth/video-token';
  static const String availableSlots = '$baseUrl/telehealth/doctors/:id/slots';

  // Mental health endpoints
  static const String moodLogs = '$baseUrl/mental-health/mood';
  static const String moodLogById = '$baseUrl/mental-health/mood/:id';
  static const String journalEntries = '$baseUrl/mental-health/journal';
  static const String journalEntryById = '$baseUrl/mental-health/journal/:id';
  static const String meditations = '$baseUrl/mental-health/meditations';
  static const String meditationById = '$baseUrl/mental-health/meditations/:id';

  // Community endpoints
  static const String community = '$baseUrl/community';
  static const String leaderboard = '$baseUrl/community/leaderboard';
  static const String achievements = '$baseUrl/community/achievements';

  // AI/ML endpoints
  static const String healthScore = '$baseUrl/ai/health-score';
  static const String recommendations = '$baseUrl/ai/recommendations';
  static const String predictions = '$baseUrl/ai/predictions';
  static const String symptomChecker = '$baseUrl/ai/symptom-checker';
  static const String foodRecognition = '$baseUrl/ai/food-recognition';

  // Notification endpoints
  static const String notifications = '$baseUrl/notifications';
  static const String notificationById = '$baseUrl/notifications/:id';
  static const String markAsRead = '$baseUrl/notifications/:id/read';
  static const String markAllAsRead = '$baseUrl/notifications/read-all';
  static const String pushToken = '$baseUrl/notifications/push-token';

  // Payment endpoints
  static const String payments = '$baseUrl/payments';
  static const String subscriptions = '$baseUrl/subscriptions';
  static const String paymentMethods = '$baseUrl/payment-methods';
  static const String createPaymentIntent = '$baseUrl/payments/create-intent';

  // Analytics endpoints
  static const String dashboard = '$baseUrl/analytics/dashboard';
  static const String reports = '$baseUrl/analytics/reports';
  static const String insights = '$baseUrl/analytics/insights';
}
