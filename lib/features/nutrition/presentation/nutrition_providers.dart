import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/food.dart';
import '../../../core/providers/database_providers.dart';
import '../../../data/repositories/meal_repository.dart';

final nutritionDateProvider = StateProvider<DateTime>((ref) => DateTime.now());

final mealsForDateProvider = FutureProvider<List<MealLog>>((ref) async {
  final date = ref.watch(nutritionDateProvider);
  final repo = await ref.watch(mealRepoProvider.future);
  return repo.getMealsForDate(date);
});

final nutritionGoalsProvider = FutureProvider<NutritionGoals>((ref) async {
  final repo = await ref.watch(mealRepoProvider.future);
  return repo.getGoals();
});

final allFoodsProvider = FutureProvider<List<Food>>((ref) async {
  final repo = await ref.watch(foodRepoProvider.future);
  return repo.getAll();
});

final waterIntakeProvider = FutureProvider<double>((ref) async {
  final date = ref.watch(nutritionDateProvider);
  final repo = await ref.watch(mealRepoProvider.future);
  return repo.getWaterForDate(date);
});
