/// API Endpoints for all services
class Endpoints {
  // Auth endpoints
  static const String login = '/api/v1/auth/login';
  static const String register = '/api/v1/auth/register';
  static const String logout = '/api/v1/auth/logout';
  static const String refreshToken = '/api/v1/auth/refresh';
  static const String forgotPassword = '/api/v1/auth/forgot-password';
  static const String resetPassword = '/api/v1/auth/reset-password';
  static const String verifyEmail = '/api/v1/auth/verify-email';
  static const String resendVerification = '/api/v1/auth/resend-verification';
  static const String changePassword = '/api/v1/auth/change-password';
  static const String socialLogin = '/api/v1/auth/social-login';

  // User endpoints
  static const String userProfile = '/api/v1/users/profile';
  static const String updateProfile = '/api/v1/users/profile';
  static const String getUserById = '/api/v1/users'; // /{id}
  static const String uploadAvatar = '/api/v1/users/avatar';
  static const String deleteAccount = '/api/v1/users/account';
  static const String userPreferences = '/api/v1/users/preferences';
  static const String updatePreferences = '/api/v1/users/preferences';
  static const String healthConditions = '/api/v1/users/health-conditions';
  static const String updateHealthConditions = '/api/v1/users/health-conditions';

  // Health - Vitals endpoints
  static const String getVitals = '/api/v1/health/vitals';
  static const String logVital = '/api/v1/health/vitals/log';
  static const String getVitalHistory = '/api/v1/health/vitals/history'; // /{type}
  static const String deleteVital = '/api/v1/health/vitals'; // /{id}

  // Health - Sleep endpoints
  static const String getSleepLogs = '/api/v1/health/sleep';
  static const String logSleep = '/api/v1/health/sleep/log';
  static const String getSleepHistory = '/api/v1/health/sleep/history';
  static const String deleteSleepLog = '/api/v1/health/sleep'; // /{id}
  static const String sleepAnalysis = '/api/v1/health/sleep/analysis';

  // Health - Water endpoints
  static const String getWaterIntake = '/api/v1/health/water';
  static const String logWater = '/api/v1/health/water/log';
  static const String getWaterHistory = '/api/v1/health/water/history';
  static const String deleteWaterLog = '/api/v1/health/water'; // /{id}
  static const String waterGoal = '/api/v1/health/water/goal';
  static const String updateWaterGoal = '/api/v1/health/water/goal';

  // Health - Weight endpoints
  static const String getWeightLogs = '/api/v1/health/weight';
  static const String logWeight = '/api/v1/health/weight/log';
  static const String getWeightHistory = '/api/v1/health/weight/history';
  static const String deleteWeightLog = '/api/v1/health/weight'; // /{id}
  static const String weightGoal = '/api/v1/health/weight/goal';
  static const String updateWeightGoal = '/api/v1/health/weight/goal';
  static const String bodyComposition = '/api/v1/health/weight/body-composition';

  // Health - Medications endpoints
  static const String getMedications = '/api/v1/health/medications';
  static const String addMedication = '/api/v1/health/medications';
  static const String updateMedication = '/api/v1/health/medications'; // /{id}
  static const String deleteMedication = '/api/v1/health/medications'; // /{id}
  static const String medicationReminders = '/api/v1/health/medications/reminders';
  static const String logMedicationTaken = '/api/v1/health/medications/log'; // /{id}

  // Nutrition - Meals endpoints
  static const String getMeals = '/api/v1/nutrition/meals';
  static const String logMeal = '/api/v1/nutrition/meals/log';
  static const String getMealHistory = '/api/v1/nutrition/meals/history';
  static const String deleteMeal = '/api/v1/nutrition/meals'; // /{id}
  static const String getMealById = '/api/v1/nutrition/meals'; // /{id}
  static const String updateMeal = '/api/v1/nutrition/meals'; // /{id}

  // Nutrition - Foods endpoints
  static const String searchFoods = '/api/v1/nutrition/foods/search';
  static const String getFoodById = '/api/v1/nutrition/foods'; // /{id}
  static const String getRecentFoods = '/api/v1/nutrition/foods/recent';
  static const String getFavoriteFoods = '/api/v1/nutrition/foods/favorites';
  static const String addFavoriteFood = '/api/v1/nutrition/foods/favorites'; // /{id}
  static const String removeFavoriteFood = '/api/v1/nutrition/foods/favorites'; // /{id}
  static const String scanBarcode = '/api/v1/nutrition/foods/scan-barcode';

  // Nutrition - Recipes endpoints
  static const String getRecipes = '/api/v1/nutrition/recipes';
  static const String getRecipeById = '/api/v1/nutrition/recipes'; // /{id}
  static const String searchRecipes = '/api/v1/nutrition/recipes/search';
  static const String getFavoriteRecipes = '/api/v1/nutrition/recipes/favorites';
  static const String addFavoriteRecipe = '/api/v1/nutrition/recipes/favorites'; // /{id}
  static const String removeFavoriteRecipe = '/api/v1/nutrition/recipes/favorites'; // /{id}

  // Fitness - Workouts endpoints
  static const String getWorkouts = '/api/v1/fitness/workouts';
  static const String logWorkout = '/api/v1/fitness/workouts/log';
  static const String getWorkoutHistory = '/api/v1/fitness/workouts/history';
  static const String deleteWorkout = '/api/v1/fitness/workouts'; // /{id}
  static const String getWorkoutById = '/api/v1/fitness/workouts'; // /{id}
  static const String updateWorkout = '/api/v1/fitness/workouts'; // /{id}

  // Fitness - Exercises endpoints
  static const String getExercises = '/api/v1/fitness/exercises';
  static const String getExerciseById = '/api/v1/fitness/exercises'; // /{id}
  static const String searchExercises = '/api/v1/fitness/exercises/search';
  static const String getExerciseCategories = '/api/v1/fitness/exercises/categories';
  static const String getFavoriteExercises = '/api/v1/fitness/exercises/favorites';
  static const String addFavoriteExercise = '/api/v1/fitness/exercises/favorites'; // /{id}
  static const String removeFavoriteExercise = '/api/v1/fitness/exercises/favorites'; // /{id}

  // Fitness - Workout Plans endpoints
  static const String getWorkoutPlans = '/api/v1/fitness/plans';
  static const String getWorkoutPlanById = '/api/v1/fitness/plans'; // /{id}
  static const String createWorkoutPlan = '/api/v1/fitness/plans';
  static const String updateWorkoutPlan = '/api/v1/fitness/plans'; // /{id}
  static const String deleteWorkoutPlan = '/api/v1/fitness/plans'; // /{id}
  static const String assignWorkoutPlan = '/api/v1/fitness/plans/assign'; // /{id}
  static const String getAssignedPlans = '/api/v1/fitness/plans/assigned';

  // Fitness - Challenges endpoints
  static const String getChallenges = '/api/v1/fitness/challenges';
  static const String getChallengeById = '/api/v1/fitness/challenges'; // /{id}
  static const String joinChallenge = '/api/v1/fitness/challenges/join'; // /{id}
  static const String leaveChallenge = '/api/v1/fitness/challenges/leave'; // /{id}
  static const String getJoinedChallenges = '/api/v1/fitness/challenges/joined';
  static const String getChallengeLeaderboard = '/api/v1/fitness/challenges/leaderboard'; // /{id}

  // Telehealth - Doctors endpoints
  static const String getDoctors = '/api/v1/telehealth/doctors';
  static const String getDoctorById = '/api/v1/telehealth/doctors'; // /{id}
  static const String searchDoctors = '/api/v1/telehealth/doctors/search';
  static const String getDoctorSpecialties = '/api/v1/telehealth/doctors/specialties';
  static const String getDoctorReviews = '/api/v1/telehealth/doctors/reviews'; // /{id}
  static const String addDoctorReview = '/api/v1/telehealth/doctors/reviews'; // /{id}
  static const String getFavoriteDoctors = '/api/v1/telehealth/doctors/favorites';
  static const String addFavoriteDoctor = '/api/v1/telehealth/doctors/favorites'; // /{id}
  static const String removeFavoriteDoctor = '/api/v1/telehealth/doctors/favorites'; // /{id}

  // Telehealth - Appointments endpoints
  static const String getAppointments = '/api/v1/telehealth/appointments';
  static const String bookAppointment = '/api/v1/telehealth/appointments/book';
  static const String cancelAppointment = '/api/v1/telehealth/appointments/cancel'; // /{id}
  static const String rescheduleAppointment = '/api/v1/telehealth/appointments/reschedule'; // /{id}
  static const String getAppointmentById = '/api/v1/telehealth/appointments'; // /{id}
  static const String getUpcomingAppointments = '/api/v1/telehealth/appointments/upcoming';
  static const String getPastAppointments = '/api/v1/telehealth/appointments/past';
  static const String getAvailableSlots = '/api/v1/telehealth/appointments/available-slots'; // /{doctorId}

  // Telehealth - Prescriptions endpoints
  static const String getPrescriptions = '/api/v1/telehealth/prescriptions';
  static const String getPrescriptionById = '/api/v1/telehealth/prescriptions'; // /{id}
  static const String getActivePrescriptions = '/api/v1/telehealth/prescriptions/active';
  static const String getPastPrescriptions = '/api/v1/telehealth/prescriptions/past';

  // Telehealth - Video Call endpoints
  static const String startVideoCall = '/api/v1/telehealth/video-call/start'; // /{appointmentId}
  static const String joinVideoCall = '/api/v1/telehealth/video-call/join'; // /{roomId}
  static const String endVideoCall = '/api/v1/telehealth/video-call/end'; // /{roomId}
  static const String getCallHistory = '/api/v1/telehealth/video-call/history';

  // Telehealth - Chat endpoints
  static const String getChatRooms = '/api/v1/telehealth/chat/rooms';
  static const String getChatMessages = '/api/v1/telehealth/chat/messages'; // /{roomId}
  static const String sendMessage = '/api/v1/telehealth/chat/send'; // /{roomId}
  static const String markMessagesRead = '/api/v1/telehealth/chat/read'; // /{roomId}

  // Mental Health - Mood endpoints
  static const String getMoodLogs = '/api/v1/mental-health/mood';
  static const String logMood = '/api/v1/mental-health/mood/log';
  static const String getMoodHistory = '/api/v1/mental-health/mood/history';
  static const String getMoodAnalysis = '/api/v1/mental-health/mood/analysis';

  // Mental Health - Meditation endpoints
  static const String getMeditations = '/api/v1/mental-health/meditation';
  static const String getMeditationById = '/api/v1/mental-health/meditation'; // /{id}
  static const String getMeditationCategories = '/api/v1/mental-health/meditation/categories';
  static const String logMeditationSession = '/api/v1/mental-health/meditation/log'; // /{id}
  static const String getMeditationHistory = '/api/v1/mental-health/meditation/history';

  // Mental Health - Journal endpoints
  static const String getJournalEntries = '/api/v1/mental-health/journal';
  static const String createJournalEntry = '/api/v1/mental-health/journal';
  static const String getJournalEntryById = '/api/v1/mental-health/journal'; // /{id}
  static const String updateJournalEntry = '/api/v1/mental-health/journal'; // /{id}
  static const String deleteJournalEntry = '/api/v1/mental-health/journal'; // /{id}

  // AI/ML - Health Score endpoints
  static const String getHealthScore = '/api/v1/ai/health-score';
  static const String getHealthScoreHistory = '/api/v1/ai/health-score/history';

  // AI/ML - Recommendations endpoints
  static const String getRecommendations = '/api/v1/ai/recommendations';
  static const String getDailyRecommendations = '/api/v1/ai/recommendations/daily';

  // AI/ML - Predictions endpoints
  static const String getHealthPredictions = '/api/v1/ai/predictions';
  static const String getRiskAssessment = '/api/v1/ai/risk-assessment';

  // AI/ML - Chatbot endpoints
  static const String chatbotMessage = '/api/v1/ai/chatbot/message';
  static const String symptomChecker = '/api/v1/ai/chatbot/symptom-checker';

  // AI/ML - Food Recognition endpoints
  static const String recognizeFood = '/api/v1/ai/food-recognition';

  // Notification endpoints
  static const String getNotifications = '/api/v1/notifications';
  static const String markNotificationRead = '/api/v1/notifications/read'; // /{id}
  static const String markAllNotificationsRead = '/api/v1/notifications/read-all';
  static const String deleteNotification = '/api/v1/notifications'; // /{id}
  static const String getUnreadCount = '/api/v1/notifications/unread-count';
  static const String notificationSettings = '/api/v1/notifications/settings';
  static const String updateNotificationSettings = '/api/v1/notifications/settings';

  // Payment endpoints
  static const String getSubscriptionPlans = '/api/v1/payments/plans';
  static const String subscribe = '/api/v1/payments/subscribe';
  static const String cancelSubscription = '/api/v1/payments/subscription/cancel';
  static const String getSubscriptionStatus = '/api/v1/payments/subscription/status';
  static const String getPaymentHistory = '/api/v1/payments/history';
  static const String processPayment = '/api/v1/payments/process';
  static const String paymentWebhook = '/api/v1/payments/webhook';

  // Analytics endpoints
  static const String getDashboardData = '/api/v1/analytics/dashboard';
  static const String getWeeklyReport = '/api/v1/analytics/reports/weekly';
  static const String getMonthlyReport = '/api/v1/analytics/reports/monthly';
  static const String getInsights = '/api/v1/analytics/insights';

  // Community endpoints
  static const String getCommunityPosts = '/api/v1/community/posts';
  static const String createPost = '/api/v1/community/posts';
  static const String getPostById = '/api/v1/community/posts'; // /{id}
  static const String deletePost = '/api/v1/community/posts'; // /{id}
  static const String likePost = '/api/v1/community/posts/like'; // /{id}
  static const String unlikePost = '/api/v1/community/posts/unlike'; // /{id}
  static const String addComment = '/api/v1/community/posts/comment'; // /{id}
  static const String getComments = '/api/v1/community/posts/comments'; // /{id}

  // Leaderboard endpoints
  static const String getLeaderboard = '/api/v1/community/leaderboard';
  static const String getUserRank = '/api/v1/community/leaderboard/rank'; // /{userId}

  // Achievements endpoints
  static const String getAchievements = '/api/v1/community/achievements';
  static const String getUserAchievements = '/api/v1/community/achievements/user'; // /{userId}
  static const String getAvailableAchievements = '/api/v1/community/achievements/available';
}