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
