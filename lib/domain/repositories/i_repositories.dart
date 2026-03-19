/// Domain repository interfaces

abstract class IWorkoutRepository {
  Future<List<WorkoutLog>> getRecent(int limit);
  Future<WorkoutLog?> getInProgress();
  Future<void> startWorkout(String name);
  Future<void> addExercise(String workoutId, LoggedExercise exercise);
  Future<void> completeSet(String workoutId, WorkoutSet set);
  Future<void> finishWorkout(String workoutId, {int? rating, int? energyLevel, String? notes});
  Future<WorkoutStatsEntity> getStats();
  Future<List<WorkoutLog>> getHistory({int limit, DateTime? startDate, DateTime? endDate});
}

abstract class INutritionRepository {
  Future<DailyNutritionEntity> getDailyNutrition(DateTime date);
  Future<void> logMeal(MealType type, List<LoggedFood> foods);
  Future<void> logWater(double amountMl);
  Future<void> updateGoals(NutritionGoals goals);
  Future<NutritionGoals> getGoals();
}

abstract class IGlucoseRepository {
  Future<void> logReading(double valueMgDl, GlucoseContext context, {String? notes});
  Future<GlucoseSummaryEntity> getDailySummary(DateTime date);
  Future<List<GlucoseReading>> getRecentReadings(int limit);
  Future<void> updateTargets(GlucoseTargets targets);
  Future<GlucoseTargets> getTargets();
}

abstract class IMetricsRepository {
  Future<void> logWeight(double weightKg);
  Future<void> logMeasurement(BodyMeasurement measurement);
  Future<WeightProgressEntity> getProgress();
  Future<List<BodyMeasurement>> getHistory({int limit});
}
