import '../entities/workout_stats.dart';
import '../../repositories/i_repositories.dart';

/// Use case: Log a meal
class LogMealUseCase {
  final INutritionRepository _repository;
  
  LogMealUseCase(this._repository);
  
  Future<MealLog> call(MealType type, List<LoggedFood> foods) async {
    await _repository.logMeal(type, foods);
    
    // Return the created meal
    return MealLog(
      uuid: Uuid().v4(),
      date: DateTime.now(),
      mealType: type,
      foods: foods,
    );
  }
}

/// Use case: Log water intake
class LogWaterUseCase {
  final INutritionRepository _repository;
  
  LogWaterUseCase(this._repository);
  
  Future<void> call(double amountMl) async {
    await _repository.logWater(amountMl);
  }
}

/// Use case: Get daily nutrition
class GetDailyNutritionUseCase {
  final INutritionRepository _repository;
  
  GetDailyNutritionUseCase(this._repository);
  
  Future<DailyNutritionEntity> call(DateTime date) async {
    return await _repository.getDailyNutrition(date);
  }
}

/// Use case: Update nutrition goals
class UpdateNutritionGoalsUseCase {
  final INutritionRepository _repository;
  
  UpdateNutritionGoalsUseCase(this._repository);
  
  Future<void> call({
    double? calories,
    double? protein,
    double? carbs,
    double? fat,
    double? fiber,
    double? water,
  }) async {
    final goals = await _repository.getGoals();
    
    if (calories != null) goals.calories = calories;
    if (protein != null) goals.protein = protein;
    if (carbs != null) goals.carbs = carbs;
    if (fat != null) goals.fat = fat;
    if (fiber != null) goals.fiber = fiber;
    if (water != null) goals.water = water;
    
    await _repository.updateGoals(goals);
  }
}

/// Use case: Calculate recommended macros
class CalculateMacrosUseCase {
  Future<NutritionGoals> call({
    required double weightKg,
    required double heightCm,
    required int age,
    required String gender,
    required String activityLevel,
    required String goal, // 'lose', 'maintain', 'gain'
  }) async {
    // Calculate BMR using Mifflin-St Jeor
    double bmr;
    if (gender.toLowerCase() == 'male') {
      bmr = 10 * weightKg + 6.25 * heightCm - 5 * age + 5;
    } else {
      bmr = 10 * weightKg + 6.25 * heightCm - 5 * age - 161;
    }
    
    // Apply activity multiplier
    double tdee;
    switch (activityLevel.toLowerCase()) {
      case 'sedentary':
        tdee = bmr * 1.2;
        break;
      case 'light':
        tdee = bmr * 1.375;
        break;
      case 'moderate':
        tdee = bmr * 1.55;
        break;
      case 'active':
        tdee = bmr * 1.725;
        break;
      case 'very_active':
        tdee = bmr * 1.9;
        break;
      default:
        tdee = bmr * 1.55;
    }
    
    // Adjust for goal
    double calories;
    switch (goal.toLowerCase()) {
      case 'lose':
        calories = tdee * 0.8; // 20% deficit
        break;
      case 'gain':
        calories = tdee * 1.15; // 15% surplus
        break;
      default:
        calories = tdee;
    }
    
    // Calculate macros (40/30/30 split)
    final protein = (calories * 0.3) / 4; // 4 cal per gram
    final fat = (calories * 0.3) / 9; // 9 cal per gram
    final carbs = (calories * 0.4) / 4; // 4 cal per gram
    
    return NutritionGoals(
      calories: calories.roundToDouble(),
      protein: protein.roundToDouble(),
      carbs: carbs.roundToDouble(),
      fat: fat.roundToDouble(),
      fiber: 30, // Standard recommendation
      water: weightKg * 35, // 35ml per kg body weight
    );
  }
}
