// Application routes configuration
// File: mobile/lib/core/config/routes.dart

import 'package:flutter/material.dart';

/// Application route paths
class Routes {
  Routes._();

  // Splash & Onboarding
  static const String splash = '/splash';
  static const String onboarding = '/onboarding';

  // Authentication
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String verifyEmail = '/verify-email';
  static const String resetPassword = '/reset-password';

  // Main Navigation
  static const String home = '/home';
  static const String dashboard = '/dashboard';

  // Health Tracking
  static const String health = '/health';
  static const String vitals = '/health/vitals';
  static const String sleep = '/health/sleep';
  static const String water = '/health/water';
  static const String weight = '/health/weight';
  static const String medications = '/health/medications';

  // Nutrition
  static const String nutrition = '/nutrition';
  static const String mealLog = '/nutrition/meal-log';
  static const String foodSearch = '/nutrition/food-search';
  static const String barcodeScanner = '/nutrition/barcode-scanner';
  static const String recipes = '/nutrition/recipes';
  static const String mealDetail = '/nutrition/meal-detail';

  // Fitness
  static const String fitness = '/fitness';
  static const String workout = '/fitness/workout';
  static const String exerciseDetail = '/fitness/exercise-detail';
  static const String workoutPlans = '/fitness/workout-plans';
  static const String workoutDetail = '/fitness/workout-detail';

  // Mental Health
  static const String mentalHealth = '/mental-health';
  static const String moodTracker = '/mental-health/mood-tracker';
  static const String meditation = '/mental-health/meditation';
  static const String journal = '/mental-health/journal';
  static const String breathingExercise = '/mental-health/breathing';

  // Telehealth
  static const String telehealth = '/telehealth';
  static const String doctorsList = '/telehealth/doctors';
  static const String doctorDetail = '/telehealth/doctors/:id';
  static const String bookAppointment = '/telehealth/book-appointment';
  static const String appointments = '/telehealth/appointments';
  static const String appointmentDetail = '/telehealth/appointments/:id';
  static const String videoCall = '/telehealth/video-call';
  static const String chat = '/telehealth/chat';

  // Profile
  static const String profile = '/profile';
  static const String editProfile = '/profile/edit';
  static const String healthRecords = '/profile/health-records';
  static const String settings = '/profile/settings';
  static const String notifications = '/profile/notifications';
  static const String privacy = '/profile/privacy';

  // Community
  static const String community = '/community';
  static const String challenges = '/community/challenges';
  static const String leaderboard = '/community/leaderboard';
  static const String challengeDetail = '/community/challenges/:id';

  /// Generate route based on settings
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return _buildPageRoute(const SizedBox.shrink(), settings);
      case login:
        return _buildPageRoute(const SizedBox.shrink(), settings);
      case register:
        return _buildPageRoute(const SizedBox.shrink(), settings);
      case home:
        return _buildPageRoute(const SizedBox.shrink(), settings);
      default:
        return _buildPageRoute(
          Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
          settings,
        );
    }
  }

  static PageRouteBuilder _buildPageRoute(Widget page, RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (_, __, ___) => page,
      transitionsBuilder: (_, animation, __, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 300),
    );
  }
}
