class AppRoutes {
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String home = '/home';
  static const String dashboard = '/dashboard';
  static const String health = '/health';
  static const String vitals = '/vitals';
  static const String sleep = '/sleep';
  static const String water = '/water';
  static const String weight = '/weight';
  static const String nutrition = '/nutrition';
  static const String mealLog = '/meal-log';
  static const String foodSearch = '/food-search';
  static const String barcodeScanner = '/barcode-scanner';
  static const String recipes = '/recipes';
  static const String fitness = '/fitness';
  static const String workout = '/workout';
  static const String exerciseDetail = '/exercise-detail';
  static const String workoutPlans = '/workout-plans';
  static const String mentalHealth = '/mental-health';
  static const String moodTracker = '/mood-tracker';
  static const String meditation = '/meditation';
  static const String journal = '/journal';
  static const String telehealth = '/telehealth';
  static const String doctorsList = '/doctors-list';
  static const String doctorDetail = '/doctor-detail';
  static const String bookAppointment = '/book-appointment';
  static const String videoCall = '/video-call';
  static const String chat = '/chat';
  static const String profile = '/profile';
  static const String editProfile = '/edit-profile';
  static const String healthRecords = '/health-records';
  static const String settings = '/settings';
  static const String community = '/community';
  static const String challenges = '/challenges';
  static const String leaderboard = '/leaderboard';

  static final List<String> authRoutes = [
    login,
    register,
    forgotPassword,
  ];

  static final List<String> protectedRoutes = [
    home,
    dashboard,
    health,
    vitals,
    sleep,
    water,
    weight,
    nutrition,
    mealLog,
    foodSearch,
    barcodeScanner,
    recipes,
    fitness,
    workout,
    exerciseDetail,
    workoutPlans,
    mentalHealth,
    moodTracker,
    meditation,
    journal,
    telehealth,
    doctorsList,
    doctorDetail,
    bookAppointment,
    videoCall,
    chat,
    profile,
    editProfile,
    healthRecords,
    settings,
    community,
    challenges,
    leaderboard,
  ];
}