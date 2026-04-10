import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import '../../data/services/database_service.dart';
import '../../data/repositories/workout_repository.dart';
import '../../data/repositories/food_repository.dart';
import '../../data/repositories/meal_repository.dart';
import '../../data/repositories/glucose_repository.dart';
import '../../data/repositories/metrics_repository.dart';
import '../../data/repositories/exercise_repository.dart';

/// Provides the Isar database instance
final isarProvider = FutureProvider<Isar>((ref) async {
  return DatabaseService.instance;
});

/// Repository providers — concrete Isar implementations
final workoutRepoProvider = FutureProvider<WorkoutRepository>((ref) async {
  final isar = await ref.watch(isarProvider.future);
  return WorkoutRepository(isar);
});

final exerciseRepoProvider = FutureProvider<ExerciseRepository>((ref) async {
  final isar = await ref.watch(isarProvider.future);
  return ExerciseRepository(isar);
});

final foodRepoProvider = FutureProvider<FoodRepository>((ref) async {
  final isar = await ref.watch(isarProvider.future);
  return FoodRepository(isar);
});

final mealRepoProvider = FutureProvider<MealRepository>((ref) async {
  final isar = await ref.watch(isarProvider.future);
  return MealRepository(isar);
});

final glucoseRepoProvider = FutureProvider<GlucoseRepository>((ref) async {
  final isar = await ref.watch(isarProvider.future);
  return GlucoseRepository(isar);
});

final metricsRepoProvider = FutureProvider<MetricsRepository>((ref) async {
  final isar = await ref.watch(isarProvider.future);
  return MetricsRepository(isar);
});
