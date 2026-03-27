// API Endpoints
class ApiEndpoints {
  // Base
  static const String apiBase = '/api/v1';
  
  // Auth
  static const String login = '$apiBase/auth/login';
  static const String register = '$apiBase/auth/register';
  static const String logout = '$apiBase/auth/logout';
  static const String refreshToken = '$apiBase/auth/refresh';
  static const String forgotPassword = '$apiBase/auth/forgot-password';
  static const String resetPassword = '$apiBase/auth/reset-password';
  static const String verifyEmail = '$apiBase/auth/verify-email';
  static const String resendVerification = '$apiBase/auth/resend-verification';
  
  // User
  static const String userProfile = '$apiBase/user/profile';
  static const String updateProfile = '$apiBase/user/profile';
  static const String changePassword = '$apiBase/user/change-password';
  static const String userPreferences = '$apiBase/user/preferences';
  static const String healthConditions = '$apiBase/user/health-conditions';
  
  // Health - Vitals
  static const String vitals = '$apiBase/health/vitals';
  static const String vitalLogs = '$apiBase/health/vitals/logs';
  static const String heartRate = '$apiBase/health/vitals/heart-rate';
  static const String bloodPressure = '$apiBase/health/vitals/blood-pressure';
  static const String temperature = '$apiBase/health/vitals/temperature';
  static const String oxygenSaturation = '$apiBase/health/vitals/oxygen';
  static const String glucose = '$apiBase/health/vitals/glucose';
  
  // Health - Sleep
  static const String sleepLogs = '$apiBase/health/sleep';
  static const String sleepStats = '$apiBase/health/sleep/stats';
  static const String sleepQuality = '$apiBase/health/sleep/quality';
  
  // Health - Water
  static const String waterIntake = '$apiBase/health/water';
  static const String waterLogs = '$apiBase/health/water/logs';
  static const String waterReminder = '$apiBase/health/water/reminder';
  
  // Health - Weight
  static const String weightLogs = '$apiBase/health/weight';
  static const String weightStats = '$apiBase/health/weight/stats';
  static const String bmi = '$apiBase/health/weight/bmi';
  
  // Health - Medications
  static const String medications = '$apiBase/health/medications';
  static const String medicationReminders = '$apiBase/health/medications/reminders';
  
  // Nutrition
  static const String meals = '$apiBase/nutrition/meals';
  static const String mealLogs = '$apiBase/nutrition/meals/logs';
  static const String foods = '$apiBase/nutrition/foods';
  static const String foodSearch = '$apiBase/nutrition/foods/search';
  static const String barcodeScan = '$apiBase/nutrition/foods/barcode';
  static const String recipes = '$apiBase/nutrition/recipes';
  static const String recipeSearch = '$apiBase/nutrition/recipes/search';
  static const String nutritionSummary = '$apiBase/nutrition/summary';
  static const String calorieGoal = '$apiBase/nutrition/goals/calories';
  static const String macroGoal = '$apiBase/nutrition/goals/macros';
  
  // Fitness
  static const String workouts = '$apiBase/fitness/workouts';
  static const String workoutLogs = '$apiBase/fitness/workouts/logs';
  static const String exercises = '$apiBase/fitness/exercises';
  static const String exerciseLibrary = '$apiBase/fitness/exercises/library';
  static const String workoutPlans = '$apiBase/fitness/plans';
  static const String workoutPlanDetails = '$apiBase/fitness/plans';
  static const String challenges = '$apiBase/fitness/challenges';
  static const String challengeJoin = '$apiBase/fitness/challenges/join';
  static const String achievements = '$apiBase/fitness/achievements';
  
  // Fitness - Integrations
  static const String connectAppleHealth = '$apiBase/fitness/integrations/apple-health';
  static const String connectGoogleFit = '$apiBase/fitness/integrations/google-fit';
  static const String connectFitbit = '$apiBase/fitness/integrations/fitbit';
  
  // Telehealth
  static const String doctors = '$apiBase/telehealth/doctors';
  static const String doctorDetails = '$apiBase/telehealth/doctors';
  static const String appointments = '$apiBase/telehealth/appointments';
  static const String bookAppointment = '$apiBase/telehealth/appointments/book';
  static const String cancelAppointment = '$apiBase/telehealth/appointments/cancel';
  static const String prescriptions = '$apiBase/telehealth/prescriptions';
  static const String videoCallToken = '$apiBase/telehealth/video-call/token';
  static const String chatMessages = '$apiBase/telehealth/chat/messages';
  static const String chatHistory = '$apiBase/telehealth/chat/history';
  
  // Mental Health
  static const String moodLogs = '$apiBase/mental-health/mood';
  static const String moodStats = '$apiBase/mental-health/mood/stats';
  static const String meditations = '$apiBase/mental-health/meditations';
  static const String meditationSessions = '$apiBase/mental-health/meditations/sessions';
  static const String journalEntries = '$apiBase/mental-health/journal';
  static const String breathingExercises = '$apiBase/mental-health/breathing';
  
  // AI/ML
  static const String healthScore = '$apiBase/ai/health-score';
  static const String recommendations = '$apiBase/ai/recommendations';
  static const String predictions = '$apiBase/ai/predictions';
  static const String symptomChecker = '$apiBase/ai/symptom-checker';
  static const String foodRecognition = '$apiBase/ai/food-recognition';
  
  // Notifications
  static const String notifications = '$apiBase/notifications';
  static const String notificationSettings = '$apiBase/notifications/settings';
  static const String pushToken = '$apiBase/notifications/push-token';
  
  // Community
  static const String posts = '$apiBase/community/posts';
  static const String comments = '$apiBase/community/comments';
  static const String likes = '$apiBase/community/likes';
  static const String leaderboard = '$apiBase/community/leaderboard';
  
  // Analytics
  static const String dashboard = '$apiBase/analytics/dashboard';
  static const String reports = '$apiBase/analytics/reports';
  static const String insights = '$apiBase/analytics/insights';
  
  // Payment
  static const String subscriptions = '$apiBase/payment/subscriptions';
  static const String paymentMethods = '$apiBase/payment/methods';
  static const String paymentHistory = '$apiBase/payment/history';
}