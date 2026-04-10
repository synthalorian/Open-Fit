import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/workout_log.dart';
import '../../../data/models/exercise.dart';
import '../../../core/providers/database_providers.dart';

/// Recent workouts
final recentWorkoutsProvider = FutureProvider<List<WorkoutLog>>((ref) async {
  final repo = await ref.watch(workoutRepoProvider.future);
  return repo.getRecent(10);
});

/// All exercises
final allExercisesProvider = FutureProvider<List<Exercise>>((ref) async {
  final repo = await ref.watch(exerciseRepoProvider.future);
  return repo.getAll();
});

/// Workout stats
final workoutStatsProvider = FutureProvider((ref) async {
  final repo = await ref.watch(workoutRepoProvider.future);
  return repo.getStats();
});
