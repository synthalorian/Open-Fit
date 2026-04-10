import 'package:isar/isar.dart';
import '../models/food.dart';

/// Repository interface for meals
abstract class MealRepositoryBase {
  Future<List<MealLog>> getMealsForDate(DateTime date);
  Future<List<MealLog>> getMealsInRange(DateTime start, DateTime end);
  Future<void> create(MealLog meal);
  Future<void> update(MealLog meal);
  Future<void> delete(int id);
  Future<DailyNutrition> getDailyNutrition(DateTime date);
}

/// Isar implementation
class MealRepository implements MealRepositoryBase {
  final Isar _isar;
  
  MealRepository(this._isar);
  
  @override
  Future<List<MealLog>> getMealsForDate(DateTime date) async {
    final startOfDay = DateTime(date.year, date.month, date.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));
    
    return await _isar.mealLogs
        .filter()
        .dateBetween(startOfDay, endOfDay)
        .sortByMealType()
        .findAll();
  }
  
  @override
  Future<List<MealLog>> getMealsInRange(DateTime start, DateTime end) async {
    return await _isar.mealLogs
        .filter()
        .dateBetween(start, end)
        .sortByDateDesc()
        .findAll();
  }
  
  @override
  Future<void> create(MealLog meal) async {
    await _isar.writeTxn(() async {
      await _isar.mealLogs.put(meal);
    });
  }
  
  @override
  Future<void> update(MealLog meal) async {
    await _isar.writeTxn(() async {
      await _isar.mealLogs.put(meal);
    });
  }
  
  @override
  Future<void> delete(int id) async {
    await _isar.writeTxn(() async {
      await _isar.mealLogs.delete(id);
    });
  }
  
  @override
  Future<DailyNutrition> getDailyNutrition(DateTime date) async {
    final meals = await getMealsForDate(date);
    
    double calories = 0;
    double protein = 0;
    double carbs = 0;
    double fat = 0;
    double fiber = 0;
    
    for (final meal in meals) {
      calories += meal.totalCalories;
      protein += meal.totalProtein;
      carbs += meal.totalCarbs;
      fat += meal.totalFat;
      fiber += meal.totalFiber;
    }
    
    // Get water intake
    final startOfDay = DateTime(date.year, date.month, date.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));
    final waterLogs = await _isar.waterLogs
        .filter()
        .dateBetween(startOfDay, endOfDay)
        .findAll();
    final water = waterLogs.fold<double>(0, (sum, log) => sum + log.amount);
    
    return DailyNutrition(
      calories: calories,
      protein: protein,
      carbs: carbs,
      fat: fat,
      fiber: fiber,
      water: water,
    );
  }
}

/// Computed daily nutrition summary
class DailyNutrition {
  final double calories;
  final double protein;
  final double carbs;
  final double fat;
  final double fiber;
  final double water;

  DailyNutrition({
    this.calories = 0,
    this.protein = 0,
    this.carbs = 0,
    this.fat = 0,
    this.fiber = 0,
    this.water = 0,
  });
}

extension MealRepoExtensions on MealRepository {
  Future<NutritionGoals> getGoals() async {
    final goals = await _isar.nutritionGoals.where().findFirst();
    return goals ?? NutritionGoals();
  }

  Future<double> getWaterForDate(DateTime date) async {
    final startOfDay = DateTime(date.year, date.month, date.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));
    final logs = await _isar.waterLogs
        .filter()
        .dateBetween(startOfDay, endOfDay)
        .findAll();
    double total = 0;
    for (final log in logs) {
      total += log.amount;
    }
    return total;
  }
}
