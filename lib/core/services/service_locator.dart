import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../models/body_metrics.dart';
import '../models/exercise.dart';
import '../models/food.dart';
import '../models/glucose.dart';
import '../models/workout_log.dart';

/// Service locator for dependency injection
final serviceLocatorProvider = Provider((ref) => ServiceLocator sl);

ServiceLocator get serviceLocator => ref.read(serviceLocatorProvider);

/// Database service provider
final databaseServiceProvider = Provider<Isar>((ref) async {
  final dir = await getApplicationDocumentsDirectory();
  return await Isar.open(
    [
      BodyMeasurementSchema,
      UserProfileSchema,
      ExerciseSchema,
      FoodSchema,
      GlucoseReadingSchema,
      GlucoseTargetsSchema,
      MealLogSchema,
      NutritionGoalsSchema,
      WaterLogSchema,
      WorkoutLogSchema,
      PersonalRecordSchema,
    ],
    directory: dir.path,
  );
});

/// Repositories provider
final exerciseRepoProvider = Provider<ExerciseRepository>((ref) {
  final isar = ref.watch(databaseServiceProvider)!;
  return ExerciseRepository(isar);
});

final workoutRepoProvider = Provider<WorkoutRepository>((ref) {
  final isar = ref.watch(databaseServiceProvider)!;
  return WorkoutRepository(isar);
});

final foodRepoProvider = Provider<FoodRepository>((ref) {
  final isar = ref.watch(databaseServiceProvider)!;
  return FoodRepository(isar);
});

final mealRepoProvider = Provider<MealRepository>((ref) {
  final isar = ref.watch(databaseServiceProvider)!;
  return MealRepository(isar);
});

final glucoseRepoProvider = Provider<GlucoseRepository>((ref) {
  final isar = ref.watch(databaseServiceProvider)!;
  return GlucoseRepository(isar);
});

final metricsRepoProvider = Provider<MetricsRepository>((ref) {
  final isar = ref.watch(databaseServiceProvider)!;
  return MetricsRepository(isar);
});

/// Initialize database on app startup
Future<void> initDatabase() async {
  final container = ProviderContainer();
  final locator = container.read(serviceLocatorProvider);
  final dir = await getApplicationDocumentsDirectory();
  
  final isar = await Isar.open(
    [
      BodyMeasurementSchema,
      UserProfileSchema,
      ExerciseSchema,
      FoodSchema,
      GlucoseReadingSchema,
      GlucoseTargetsSchema,
      MealLogSchema,
      NutritionGoalsSchema,
      WaterLogSchema,
      WorkoutLogSchema,
      PersonalRecordSchema,
    ],
    directory: dir.path,
  );
  
  // Populate default data
  await _populateDefaultData(isar);
  
  return isar;
}

Future<void> _populateDefaultData(Isar isar) async {
  final exerciseCount = await isar.exercises.count();
  if (exerciseCount == 0) {
    final exercises = getDefaultExercises();
    await isar.writeTxn(() async {
      await isar.exercises.putAll(exercises);
    });
  }

  final foodCount = await isar.foods.count();
  if (foodCount == 0) {
    final foods = getDefaultFoods();
    await isar.writeTxn(() async {
      await isar.foods.putAll(foods);
    });
  }

  final goalsCount = await isar.nutritionGoals.count();
  if (goalsCount == 0) {
    await isar.writeTxn(() async {
      await isar.nutritionGoals.put(NutritionGoals());
    });
  }
}
