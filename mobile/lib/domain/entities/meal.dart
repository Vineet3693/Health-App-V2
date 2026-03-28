import 'package:equatable/equatable.dart';

/// Meal type enum
enum MealType {
  breakfast,
  lunch,
  dinner,
  snack,
}

/// Extension to get display name for meal types
extension MealTypeExtension on MealType {
  String get displayName {
    switch (this) {
      case MealType.breakfast:
        return 'Breakfast';
      case MealType.lunch:
        return 'Lunch';
      case MealType.dinner:
        return 'Dinner';
      case MealType.snack:
        return 'Snack';
    }
  }

  String get icon {
    switch (this) {
      case MealType.breakfast:
        return '🍳';
      case MealType.lunch:
        return '🥗';
      case MealType.dinner:
        return '🍽️';
      case MealType.snack:
        return '🍎';
    }
  }
}

/// Food item entity
class FoodItem extends Equatable {
  final String id;
  final String name;
  final double calories;
  final double protein; // grams
  final double carbs; // grams
  final double fat; // grams
  final double fiber; // grams
  final double servingSize;
  final String servingUnit;
  final String? brand;
  final Map<String, dynamic>? nutrients;

  const FoodItem({
    required this.id,
    required this.name,
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fiber,
    required this.servingSize,
    required this.servingUnit,
    this.brand,
    this.nutrients,
  });

  FoodItem copyWith({
    String? id,
    String? name,
    double? calories,
    double? protein,
    double? carbs,
    double? fat,
    double? fiber,
    double? servingSize,
    String? servingUnit,
    String? brand,
    Map<String, dynamic>? nutrients,
  }) {
    return FoodItem(
      id: id ?? this.id,
      name: name ?? this.name,
      calories: calories ?? this.calories,
      protein: protein ?? this.protein,
      carbs: carbs ?? this.carbs,
      fat: fat ?? this.fat,
      fiber: fiber ?? this.fiber,
      servingSize: servingSize ?? this.servingSize,
      servingUnit: servingUnit ?? this.servingUnit,
      brand: brand ?? this.brand,
      nutrients: nutrients ?? this.nutrients,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        calories,
        protein,
        carbs,
        fat,
        fiber,
        servingSize,
        servingUnit,
        brand,
        nutrients,
      ];
}

/// Meal entity representing a logged meal
class Meal extends Equatable {
  final String id;
  final String userId;
  final MealType type;
  final DateTime loggedAt;
  final List<MealFoodItem> foods;
  final double totalCalories;
  final double totalProtein;
  final double totalCarbs;
  final double totalFat;
  final double totalFiber;
  final String? notes;
  final String? photoUrl;
  final DateTime createdAt;

  const Meal({
    required this.id,
    required this.userId,
    required this.type,
    required this.loggedAt,
    required this.foods,
    required this.totalCalories,
    required this.totalProtein,
    required this.totalCarbs,
    required this.totalFat,
    required this.totalFiber,
    this.notes,
    this.photoUrl,
    required this.createdAt,
  });

  /// Get total number of food items
  int get foodCount => foods.length;

  Meal copyWith({
    String? id,
    String? userId,
    MealType? type,
    DateTime? loggedAt,
    List<MealFoodItem>? foods,
    double? totalCalories,
    double? totalProtein,
    double? totalCarbs,
    double? totalFat,
    double? totalFiber,
    String? notes,
    String? photoUrl,
    DateTime? createdAt,
  }) {
    return Meal(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      loggedAt: loggedAt ?? this.loggedAt,
      foods: foods ?? this.foods,
      totalCalories: totalCalories ?? this.totalCalories,
      totalProtein: totalProtein ?? this.totalProtein,
      totalCarbs: totalCarbs ?? this.totalCarbs,
      totalFat: totalFat ?? this.totalFat,
      totalFiber: totalFiber ?? this.totalFiber,
      notes: notes ?? this.notes,
      photoUrl: photoUrl ?? this.photoUrl,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        userId,
        type,
        loggedAt,
        foods,
        totalCalories,
        totalProtein,
        totalCarbs,
        totalFat,
        totalFiber,
        notes,
        photoUrl,
        createdAt,
      ];
}

/// Meal food item - junction between meal and food
class MealFoodItem extends Equatable {
  final String id;
  final FoodItem food;
  final double quantity;
  final String unit;
  final double calories;
  final double protein;
  final double carbs;
  final double fat;
  final double fiber;

  const MealFoodItem({
    required this.id,
    required this.food,
    required this.quantity,
    required this.unit,
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fiber,
  });

  MealFoodItem copyWith({
    String? id,
    FoodItem? food,
    double? quantity,
    String? unit,
    double? calories,
    double? protein,
    double? carbs,
    double? fat,
    double? fiber,
  }) {
    return MealFoodItem(
      id: id ?? this.id,
      food: food ?? this.food,
      quantity: quantity ?? this.quantity,
      unit: unit ?? this.unit,
      calories: calories ?? this.calories,
      protein: protein ?? this.protein,
      carbs: carbs ?? this.carbs,
      fat: fat ?? this.fat,
      fiber: fiber ?? this.fiber,
    );
  }

  @override
  List<Object?> get props => [
        id,
        food,
        quantity,
        unit,
        calories,
        protein,
        carbs,
        fat,
        fiber,
      ];
}
