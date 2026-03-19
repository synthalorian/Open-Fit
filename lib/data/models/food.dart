import 'package:isar/isar.dart';

part 'food.g.dart';

/// Food item - can be from database or custom
@Collection()
class Food {
  Id id = Isar.autoIncrement;

  /// UUID for syncing/sharing
  @Index(unique: true)
  late String uuid;

  /// Food name
  late String name;

  /// Brand name (optional)
  String? brandName;

  /// Barcode (for scanning)
  String? barcode;

  /// Serving size
  late double servingSize;

  /// Serving unit (g, oz, cup, etc.)
  @Enumerated(EnumType.name)
  late ServingUnit servingUnit;

  /// Calories per serving
  late double calories;

  /// Protein (g) per serving
  late double protein;

  /// Carbohydrates (g) per serving
  late double carbs;

  /// Fat (g) per serving
  late double fat;

  /// Fiber (g) per serving
  double fiber = 0;

  /// Sugar (g) per serving
  double sugar = 0;

  /// Sodium (mg) per serving
  double sodium = 0;

  /// Is this a custom user-created food?
  bool isCustom = false;

  /// Is this a favorite food?
  bool isFavorite = false;

  /// Creation timestamp
  late DateTime createdAt;

  /// Last updated timestamp
  late DateTime updatedAt;

  Food({
    required this.uuid,
    required this.name,
    required this.servingSize,
    required this.servingUnit,
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
    this.brandName,
    this.barcode,
    this.fiber = 0,
    this.sugar = 0,
    this.sodium = 0,
  }) {
    createdAt = DateTime.now();
    updatedAt = DateTime.now();
  }

  /// Get macros as a map
  @ignore
  Map<String, double> get macros => {
    'protein': protein,
    'carbs': carbs,
    'fat': fat,
  };

  /// Get nutrition for a specific quantity
  @ignore
  Map<String, double> getNutritionForQuantity(double quantity, ServingUnit unit) {
    // Convert quantity to base serving size
    double multiplier;
    if (unit == servingUnit) {
      multiplier = quantity / servingSize;
    } else {
      // Simple conversion (can be expanded)
      multiplier = _convertToBase(quantity, unit) / servingSize;
    }

    return {
      'calories': calories * multiplier,
      'protein': protein * multiplier,
      'carbs': carbs * multiplier,
      'fat': fat * multiplier,
      'fiber': fiber * multiplier,
      'sugar': sugar * multiplier,
      'sodium': sodium * multiplier,
    };
  }

  double _convertToBase(double quantity, ServingUnit fromUnit) {
    // Simplified conversions - expand as needed
    const conversions = {
      ServingUnit.gram: 1.0,
      ServingUnit.ounce: 28.35,
      ServingUnit.pound: 453.59,
      ServingUnit.milliliter: 1.0,
      ServingUnit.liter: 1000.0,
      ServingUnit.cup: 240.0,
      ServingUnit.tablespoon: 15.0,
      ServingUnit.teaspoon: 5.0,
      ServingUnit.piece: 1.0,
      ServingUnit.serving: 1.0,
    };
    return quantity * (conversions[fromUnit] ?? 1.0);
  }
}

enum ServingUnit {
  gram,
  ounce,
  pound,
  milliliter,
  liter,
  cup,
  tablespoon,
  teaspoon,
  piece,
  serving,
}

/// Meal types
enum MealType {
  breakfast,
  lunch,
  dinner,
  snack,
}

/// A food item logged in a meal
@embedded
class LoggedFood {
  /// Reference to food UUID
  String foodUuid = '';

  /// Food name (cached)
  String foodName = '';

  /// Quantity consumed
  double quantity = 1.0;

  /// Unit of quantity
  @Enumerated(EnumType.name)
  ServingUnit unit = ServingUnit.serving;

  /// Calculated nutrition for this portion
  double calories = 0;
  double protein = 0;
  double carbs = 0;
  double fat = 0;
  double fiber = 0;
}

/// A meal entry (breakfast, lunch, dinner, snack)
@Collection()
class MealLog {
  Id id = Isar.autoIncrement;

  /// UUID
  @Index(unique: true)
  late String uuid;

  /// Date of the meal
  late DateTime date;

  /// Type of meal
  @Enumerated(EnumType.name)
  late MealType mealType;

  /// Foods in this meal
  List<LoggedFood> foods = [];

  /// Meal notes
  String? notes;

  /// Creation timestamp
  late DateTime createdAt;

  MealLog({
    required this.uuid,
    required this.date,
    required this.mealType,
    this.foods = const [],
    this.notes,
  }) {
    createdAt = DateTime.now();
  }

  /// Total calories for this meal
  @ignore
  double get totalCalories => foods.fold(0, (sum, f) => sum + f.calories);

  /// Total protein for this meal
  @ignore
  double get totalProtein => foods.fold(0, (sum, f) => sum + f.protein);

  /// Total carbs for this meal
  @ignore
  double get totalCarbs => foods.fold(0, (sum, f) => sum + f.carbs);

  /// Total fat for this meal
  @ignore
  double get totalFat => foods.fold(0, (sum, f) => sum + f.fat);

  /// Total fiber for this meal
  @ignore
  double get totalFiber => foods.fold(0, (sum, f) => sum + f.fiber);
}

/// Daily nutrition goals
@Collection()
class NutritionGoals {
  Id id = Isar.autoIncrement;

  /// Calories per day
  double calories = 2000;

  /// Protein (g) per day
  double protein = 150;

  /// Carbs (g) per day
  double carbs = 250;

  /// Fat (g) per day
  double fat = 65;

  /// Fiber (g) per day
  double fiber = 30;

  /// Water (ml) per day
  double water = 2500;

  NutritionGoals({
    this.calories = 2000,
    this.protein = 150,
    this.carbs = 250,
    this.fat = 65,
    this.fiber = 30,
    this.water = 2500,
  });
}

/// Water intake log
@Collection()
class WaterLog {
  Id id = Isar.autoIncrement;

  /// Date
  late DateTime date;

  /// Amount in ml
  late double amount;

  /// Timestamp
  late DateTime timestamp;

  WaterLog({
    required this.date,
    required this.amount,
  }) {
    timestamp = DateTime.now();
  }
}

/// Default food database
List<Food> getDefaultFoods() {
  return [
    // Proteins
    Food(
      uuid: 'chicken_breast_100g',
      name: 'Chicken Breast',
      servingSize: 100,
      servingUnit: ServingUnit.gram,
      calories: 165,
      protein: 31,
      carbs: 0,
      fat: 3.6,
    ),
    Food(
      uuid: 'egg_large',
      name: 'Egg',
      brandName: 'Large',
      servingSize: 1,
      servingUnit: ServingUnit.piece,
      calories: 70,
      protein: 6,
      carbs: 0.6,
      fat: 5,
    ),
    Food(
      uuid: 'salmon_100g',
      name: 'Salmon',
      servingSize: 100,
      servingUnit: ServingUnit.gram,
      calories: 208,
      protein: 20,
      carbs: 0,
      fat: 13,
    ),
    Food(
      uuid: 'greek_yogurt_170g',
      name: 'Greek Yogurt',
      brandName: 'Plain, Non-fat',
      servingSize: 170,
      servingUnit: ServingUnit.gram,
      calories: 100,
      protein: 17,
      carbs: 6,
      fat: 0,
    ),
    Food(
      uuid: 'protein_powder_30g',
      name: 'Whey Protein Powder',
      servingSize: 30,
      servingUnit: ServingUnit.gram,
      calories: 120,
      protein: 24,
      carbs: 3,
      fat: 1,
    ),
    Food(
      uuid: 'tuna_100g',
      name: 'Tuna (canned in water)',
      servingSize: 100,
      servingUnit: ServingUnit.gram,
      calories: 116,
      protein: 26,
      carbs: 0,
      fat: 1,
    ),
    Food(
      uuid: 'beef_100g',
      name: 'Ground Beef (90% lean)',
      servingSize: 100,
      servingUnit: ServingUnit.gram,
      calories: 176,
      protein: 26,
      carbs: 0,
      fat: 8,
    ),

    // Carbs
    Food(
      uuid: 'rice_cooked_100g',
      name: 'White Rice (cooked)',
      servingSize: 100,
      servingUnit: ServingUnit.gram,
      calories: 130,
      protein: 2.7,
      carbs: 28,
      fat: 0.3,
    ),
    Food(
      uuid: 'brown_rice_cooked_100g',
      name: 'Brown Rice (cooked)',
      servingSize: 100,
      servingUnit: ServingUnit.gram,
      calories: 111,
      protein: 2.6,
      carbs: 23,
      fat: 0.9,
      fiber: 1.8,
    ),
    Food(
      uuid: 'oats_40g',
      name: 'Oats (dry)',
      servingSize: 40,
      servingUnit: ServingUnit.gram,
      calories: 150,
      protein: 5,
      carbs: 27,
      fat: 2.5,
      fiber: 4,
    ),
    Food(
      uuid: 'sweet_potato_100g',
      name: 'Sweet Potato',
      servingSize: 100,
      servingUnit: ServingUnit.gram,
      calories: 86,
      protein: 1.6,
      carbs: 20,
      fat: 0.1,
      fiber: 3,
    ),
    Food(
      uuid: 'banana_medium',
      name: 'Banana',
      brandName: 'Medium',
      servingSize: 1,
      servingUnit: ServingUnit.piece,
      calories: 105,
      protein: 1.3,
      carbs: 27,
      fat: 0.4,
      fiber: 3.1,
    ),
    Food(
      uuid: 'apple_medium',
      name: 'Apple',
      brandName: 'Medium',
      servingSize: 1,
      servingUnit: ServingUnit.piece,
      calories: 95,
      protein: 0.5,
      carbs: 25,
      fat: 0.3,
      fiber: 4,
    ),
    Food(
      uuid: 'bread_slice',
      name: 'Whole Wheat Bread',
      servingSize: 1,
      servingUnit: ServingUnit.piece,
      calories: 80,
      protein: 4,
      carbs: 13,
      fat: 1,
      fiber: 2,
    ),

    // Vegetables
    Food(
      uuid: 'broccoli_100g',
      name: 'Broccoli',
      servingSize: 100,
      servingUnit: ServingUnit.gram,
      calories: 34,
      protein: 2.8,
      carbs: 7,
      fat: 0.4,
      fiber: 2.6,
    ),
    Food(
      uuid: 'spinach_100g',
      name: 'Spinach',
      servingSize: 100,
      servingUnit: ServingUnit.gram,
      calories: 23,
      protein: 2.9,
      carbs: 3.6,
      fat: 0.4,
      fiber: 2.2,
    ),
    Food(
      uuid: 'carrots_100g',
      name: 'Carrots',
      servingSize: 100,
      servingUnit: ServingUnit.gram,
      calories: 41,
      protein: 0.9,
      carbs: 10,
      fat: 0.2,
      fiber: 2.8,
    ),

    // Fats
    Food(
      uuid: 'avocado_half',
      name: 'Avocado',
      servingSize: 0.5,
      servingUnit: ServingUnit.piece,
      calories: 160,
      protein: 2,
      carbs: 9,
      fat: 15,
      fiber: 7,
    ),
    Food(
      uuid: 'almonds_28g',
      name: 'Almonds',
      servingSize: 28,
      servingUnit: ServingUnit.gram,
      calories: 164,
      protein: 6,
      carbs: 6,
      fat: 14,
      fiber: 3.5,
    ),
    Food(
      uuid: 'olive_oil_15ml',
      name: 'Olive Oil',
      servingSize: 15,
      servingUnit: ServingUnit.milliliter,
      calories: 120,
      protein: 0,
      carbs: 0,
      fat: 14,
    ),
    Food(
      uuid: 'peanut_butter_32g',
      name: 'Peanut Butter',
      servingSize: 32,
      servingUnit: ServingUnit.gram,
      calories: 190,
      protein: 7,
      carbs: 7,
      fat: 16,
      fiber: 2,
    ),

    // Dairy
    Food(
      uuid: 'milk_240ml',
      name: 'Milk (2%)',
      servingSize: 240,
      servingUnit: ServingUnit.milliliter,
      calories: 122,
      protein: 8,
      carbs: 12,
      fat: 5,
    ),
    Food(
      uuid: 'cheese_28g',
      name: 'Cheddar Cheese',
      servingSize: 28,
      servingUnit: ServingUnit.gram,
      calories: 110,
      protein: 7,
      carbs: 1,
      fat: 9,
    ),

    // Common meals
    Food(
      uuid: 'protein_shake',
      name: 'Protein Shake',
      servingSize: 1,
      servingUnit: ServingUnit.serving,
      calories: 150,
      protein: 25,
      carbs: 5,
      fat: 2,
    ),
  ];
}
