import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/models/food.dart';
import '../../../data/services/service_locator.dart';
import '../../domain/entities/workout_stats.dart';
import '../../domain/repositories/i_repositories.dart';

part 'nutrition_providers.g.dart';

/// Provider for nutrition repository
@riverpod
INutritionRepository nutritionRepository(NutritionRepositoryRef ref) {
  throw UnimplementedError('Repository not yet implemented');
}

/// Provider for selected date
@riverpod
class SelectedNutritionDate extends _$SelectedNutritionDate {
  @override
  DateTime build() => DateTime.now();
  
  void selectDate(DateTime date) {
    state = date;
  }
  
  void goToToday() {
    state = DateTime.now();
  }
  
  void previousDay() {
    state = state.subtract(const Duration(days: 1));
  }
  
  void nextDay() {
    final now = DateTime.now();
    if (state.year == now.year && state.month == now.month && state.day == now.day) return;
    state = state.add(const Duration(days: 1));
  }
}

/// Provider for daily nutrition
@riverpod
FutureOr<DailyNutritionEntity> dailyNutrition(DailyNutritionRef ref, DateTime date) async {
  final repo = ref.watch(nutritionRepositoryProvider);
  return await repo.getDailyNutrition(date);
}

/// Provider for nutrition goals
@riverpod
class NutritionGoalsNotifier extends _$NutritionGoalsNotifier {
  @override
  FutureOr<NutritionGoals> build() async {
    final repo = ref.watch(nutritionRepositoryProvider);
    return await repo.getGoals();
  }
  
  Future<void> updateGoals(NutritionGoals goals) async {
    final repo = ref.watch(nutritionRepositoryProvider);
    await repo.updateGoals(goals);
    state = AsyncData(goals);
  }
}

/// Provider for meals on a specific date
@riverpod
FutureOr<List<MealLog>> mealsForDate(MealsForDateRef ref, DateTime date) async {
  final repo = ref.watch(nutritionRepositoryProvider);
  return await repo.getMealsForDate(date);
}

/// Provider for water intake
@riverpod
class WaterIntake extends _$WaterIntake {
  @override
  FutureOr<double> build(DateTime date) async {
    final repo = ref.watch(nutritionRepositoryProvider);
    final nutrition = await repo.getDailyNutrition(date);
    return nutrition.water;
  }
  
  Future<void> addWater(double amountMl) async {
    final repo = ref.watch(nutritionRepositoryProvider);
    await repo.logWater(amountMl);
    
    // Refresh
    final date = DateTime.now();
    final nutrition = await repo.getDailyNutrition(date);
    state = AsyncData(nutrition.water);
  }
}

/// Provider for active meal (being logged)
@riverpod
class ActiveMeal extends _$ActiveMeal {
  @override
  MealLog? build() => null;
  
  void startMeal(MealType type, DateTime date) {
    state = MealLog(
      uuid: const Uuid().v4(),
      date: date,
      mealType: type,
      foods: [],
    );
  }
  
  void addFood(LoggedFood food) {
    final current = state;
    if (current == null) return;
    
    current.foods.add(food);
    state = current;
  }
  
  void removeFood(int index) {
    final current = state;
    if (current == null) return;
    
    current.foods.removeAt(index);
    state = current;
  }
  
  void updateFoodQuantity(int index, double quantity) {
    final current = state;
    if (current == null || index >= current.foods.length) return;
    
    current.foods[index].quantity = quantity;
    state = current;
  }
  
  Future<void> save() async {
    final current = state;
    if (current == null || current.foods.isEmpty) return;
    
    final repo = ref.watch(nutritionRepositoryProvider);
    await repo.logMeal(current.mealType, current.foods);
    
    state = null;
  }
  
  void cancel() {
    state = null;
  }
}
