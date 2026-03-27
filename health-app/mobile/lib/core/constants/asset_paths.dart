// Asset paths configuration
// File: mobile/lib/core/constants/asset_paths.dart

/// Image asset paths
class ImagePaths {
  ImagePaths._();

  // Base paths
  static const String _base = 'assets/images';
  static const String _onboarding = '$_base/onboarding';
  static const String _icons = '$_base/icons';
  static const String _illustrations = '$_base/illustrations';

  // Logo
  static const String logo = '$_base/logo.png';
  static const String logoDark = '$_base/logo_dark.png';
  static const String logoLight = '$_base/logo_light.png';

  // Onboarding images
  static const String onboarding1 = '$_onboarding/onboarding_1.png';
  static const String onboarding2 = '$_onboarding/onboarding_2.png';
  static const String onboarding3 = '$_onboarding/onboarding_3.png';
  static const String onboarding4 = '$_onboarding/onboarding_4.png';

  // Illustrations
  static const String healthIllustration = '$_illustrations/health.png';
  static const String nutritionIllustration = '$_illustrations/nutrition.png';
  static const String fitnessIllustration = '$_illustrations/fitness.png';
  static const String mentalHealthIllustration = '$_illustrations/mental_health.png';
  static const String telehealthIllustration = '$_illustrations/telehealth.png';
  static const String sleepIllustration = '$_illustrations/sleep.png';
  static const String waterIllustration = '$_illustrations/water.png';
  static const String workoutIllustration = '$_illustrations/workout.png';
  static const String doctorIllustration = '$_illustrations/doctor.png';
  static const String emptyStateIllustration = '$_illustrations/empty_state.png';
  static const String errorStateIllustration = '$_illustrations/error_state.png';
  static const String successIllustration = '$_illustrations/success.png';
  static const String loadingIllustration = '$_illustrations/loading.png';

  // Icons (SVG)
  static const String heartIcon = '$_icons/heart.svg';
  static const String activityIcon = '$_icons/activity.svg';
  static const String sleepIcon = '$_icons/sleep.svg';
  static const String waterIcon = '$_icons/water.svg';
  static const String foodIcon = '$_icons/food.svg';
  static const String workoutIcon = '$_icons/workout.svg';
  static const String meditationIcon = '$_icons/meditation.svg';
  static const String doctorIcon = '$_icons/doctor.svg';
  static const String appointmentIcon = '$_icons/appointment.svg';
  static const String notificationIcon = '$_icons/notification.svg';
  static const String settingsIcon = '$_icons/settings.svg';
  static const String profileIcon = '$_icons/profile.svg';
  static const String homeIcon = '$_icons/home.svg';
  static const String searchIcon = '$_icons/search.svg';
  static const String filterIcon = '$_icons/filter.svg';
  static const String calendarIcon = '$_icons/calendar.svg';
  static const String chartIcon = '$_icons/chart.svg';
  static const String trophyIcon = '$_icons/trophy.svg';
  static const String challengeIcon = '$_icons/challenge.svg';
  static const String leaderboardIcon = '$_icons/leaderboard.svg';
}

/// Animation asset paths
class AnimationPaths {
  AnimationPaths._();

  static const String _base = 'assets/animations/lottie';

  // Loading animations
  static const String loading = '$_base/loading.json';
  static const String loadingDots = '$_base/loading_dots.json';
  static const String loadingSpinner = '$_base/loading_spinner.json';

  // Success animations
  static const String success = '$_base/success.json';
  static const String checkmark = '$_base/checkmark.json';
  static const String celebration = '$_base/celebration.json';

  // Error animations
  static const String error = '$_base/error.json';
  static const String warning = '$_base/warning.json';

  // Feature animations
  static const String heartbeat = '$_base/heartbeat.json';
  static const String steps = '$_base/steps.json';
  static const String waterDrop = '$_base/water_drop.json';
  static const String food = '$_base/food.json';
  static const String exercise = '$_base/exercise.json';
  static const String meditation = '$_base/meditation.json';
  static const String sleep = '$_base/sleep.json';

  // Onboarding animations
  static const String welcome = '$_base/welcome.json';
  static const String getStarted = '$_base/get_started.json';

  // Empty state animations
  static const String emptyList = '$_base/empty_list.json';
  static const String noData = '$_base/no_data.json';
  static const String noConnection = '$_base/no_connection.json';
}

/// Font asset paths
class FontPaths {
  FontPaths._();

  static const String _base = 'assets/fonts';

  // Poppins font family
  static const String poppinsRegular = '$_base/Poppins-Regular.ttf';
  static const String poppinsMedium = '$_base/Poppins-Medium.ttf';
  static const String poppinsSemiBold = '$_base/Poppins-SemiBold.ttf';
  static const String poppinsBold = '$_base/Poppins-Bold.ttf';
  static const String poppinsLight = '$_base/Poppins-Light.ttf';
}
