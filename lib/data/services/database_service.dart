import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../models/body_metrics.dart';
import '../models/exercise.dart';
import '../models/food.dart';
import '../models/glucose.dart';
import '../models/workout_log.dart';

/// Database service singleton
class DatabaseService {
  static Isar? _instance;
  static bool _isInitialized = false;

  DatabaseService._();

  /// Get the Isar database instance
  static Future<Isar> get instance async {
    if (_instance == null || !_isInitialized) {
      await _init();
    }
    return _instance!;
  }

  /// Initialize the database
  static Future<void> _init() async {
    if (_isInitialized) return;

    final dir = await getApplicationDocumentsDirectory();

    _instance = await Isar.open(
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
      inspector: true, // Enable for debugging
    );

    _isInitialized = true;

    // Populate default data
    await _populateDefaultData();
  }

  /// Populate default data if the database is empty
  static Future<void> _populateDefaultData() async {
    final isar = _instance!;

    // Populate exercises
    final exerciseCount = await isar.exercises.count();
    if (exerciseCount == 0) {
      final exercises = getDefaultExercises();
      await isar.writeTxn(() async {
        await isar.exercises.putAll(exercises);
      });
    }

    // Populate foods
    final foodCount = await isar.foods.count();
    if (foodCount == 0) {
      final foods = getDefaultFoods();
      await isar.writeTxn(() async {
        await isar.foods.putAll(foods);
      });
    }

    // Create default nutrition goals if none exist
    final goalsCount = await isar.nutritionGoals.count();
    if (goalsCount == 0) {
      await isar.writeTxn(() async {
        await isar.nutritionGoals.put(NutritionGoals());
      });
    }

    // Create default glucose targets if none exist
    final targetsCount = await isar.glucoseTargets.count();
    if (targetsCount == 0) {
      await isar.writeTxn(() async {
        await isar.glucoseTargets.put(GlucoseTargets());
      });
    }

    // Create default user profile if none exist
    final profileCount = await isar.userProfiles.count();
    if (profileCount == 0) {
      await isar.writeTxn(() async {
        await isar.userProfiles.put(UserProfile());
      });
    }
  }

  /// Close the database
  static Future<void> close() async {
    await _instance?.close();
    _instance = null;
    _isInitialized = false;
  }

  /// Clear all data (useful for testing/reset)
  static Future<void> clearAll() async {
    final isar = _instance;
    if (isar == null) return;

    await isar.writeTxn(() async {
      await isar.clear();
    });
  }
}
