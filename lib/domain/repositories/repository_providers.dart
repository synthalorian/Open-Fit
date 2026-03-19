import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../repositories/i_repositories.dart';
import '../../../data/repositories/workout_repository.dart';
import '../../../data/repositories/food_repository.dart';
import '../../../data/repositories/meal_repository.dart';
import '../../../data/repositories/glucose_repository.dart';
import '../../../data/repositories/metrics_repository.dart';
import '../../../data/services/database_service.dart';

part 'repository_providers.g.dart';

@riverpod
Future<IWorkoutRepository> workoutRepository(WorkoutRepositoryRef ref) async {
  final isar = await ref.watch(databaseInstanceProvider.future);
  return WorkoutRepository(isar);
}

@riverpod
Future<INutritionRepository> nutritionRepository(NutritionRepositoryRef ref) async {
  final isar = await ref.watch(databaseInstanceProvider.future);
  return MealRepository(isar); // Note: MealRepository implements nutrition logic
}

@riverpod
Future<IFoodRepository> foodRepository(FoodRepositoryRef ref) async {
  final isar = await ref.watch(databaseInstanceProvider.future);
  return FoodRepository(isar);
}

@riverpod
Future<IGlucoseRepository> glucoseRepository(GlucoseRepositoryRef ref) async {
  final isar = await ref.watch(databaseInstanceProvider.future);
  return GlucoseRepository(isar);
}

@riverpod
Future<IMetricsRepository> metricsRepository(MetricsRepositoryRef ref) async {
  final isar = await ref.watch(databaseInstanceProvider.future);
  return MetricsRepository(isar);
}

@riverpod
Future<Isar> databaseInstance(DatabaseInstanceRef ref) async {
  return await DatabaseService.instance;
}
