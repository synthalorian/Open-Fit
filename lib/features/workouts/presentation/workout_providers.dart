import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/models/workout_log.dart';
import '../../../data/services/service_locator.dart';
import '../../domain/usecases/workout_usecases.dart';
import '../../domain/repositories/i_repositories.dart';

part 'workout_providers.g.dart';

/// Provider for workout repository
@riverpod
IWorkoutRepository workoutRepository(WorkoutRepositoryRef ref) {
  // This would be injected from service locator in real implementation
  throw UnimplementedError('Repository not yet implemented');
}

/// Provider for active workout
@riverpod
class ActiveWorkout extends _$ActiveWorkout {
  @override
  FutureOr<WorkoutLog?> build() async {
    // Get the workout in progress on app start
    final repo = ref.watch(workoutRepositoryProvider);
    return await repo.getInProgress();
  }
  
  Future<void> start(String name) async {
    final repo = ref.read(workoutRepositoryProvider);
    
    // Check if workout already in progress
    final existing = await repo.getInProgress();
    if (existing != null) {
      state = AsyncError('Workout already in progress', StackTrace.current);
      return;
    }
    
    // Start new workout
    await repo.startWorkout(name);
    state = AsyncData(await repo.getInProgress());
  }
  
  Future<void> addExercise(LoggedExercise exercise) async {
    final currentWorkout = state.value;
    if (currentWorkout == null) return;
    
    final repo = ref.read(workoutRepositoryProvider);
    await repo.addExercise(currentWorkout.uuid, exercise);
    
    // Refresh
    state = AsyncData(await repo.getInProgress());
  }
  
  Future<void> completeSet(WorkoutSet set) async {
    final currentWorkout = state.value;
    if (currentWorkout == null) return;
    
    final repo = ref.read(workoutRepositoryProvider);
    await repo.completeSet(currentWorkout.uuid, set);
    
    // Refresh
    state = AsyncData(await repo.getInProgress());
  }
  
  Future<void> finish({int? rating, int? energyLevel, String? notes}) async {
    final currentWorkout = state.value;
    if (currentWorkout == null) return;
    
    final repo = ref.read(workoutRepositoryProvider);
    await repo.finishWorkout(
      currentWorkout.uuid,
      rating: rating,
      energyLevel: energyLevel,
      notes: notes,
    );
    
    state = const AsyncData(null);
  }
  
  void cancel() {
    state = const AsyncData(null);
  }
}

/// Provider for workout stats
@riverpod
FutureOr<WorkoutStatsEntity> workoutStats(WorkoutStatsRef ref) async {
  final repo = ref.watch(workoutRepositoryProvider);
  return await repo.getStats();
}

/// Provider for recent workouts
@riverpod
FutureOr<List<WorkoutLog>> recentWorkouts(RecentWorkoutsRef ref, int limit) async {
  final repo = ref.watch(workoutRepositoryProvider);
  return await repo.getHistory(limit: limit);
}

/// Provider for workout history in date range
@riverpod
FutureOr<List<WorkoutLog>> workoutHistory(
  WorkoutHistoryRef ref,
  DateTime startDate,
  DateTime endDate,
) async {
  final repo = ref.watch(workoutRepositoryProvider);
  return await repo.getHistory(startDate: startDate, endDate: endDate);
}

/// Provider for checking if workout is in progress
@riverpod
FutureOr<bool> hasActiveWorkout(HasActiveWorkoutRef ref) async {
  final activeWorkout = ref.watch(activeWorkoutProvider);
  return activeWorkout.valueOrNull != null;
}
