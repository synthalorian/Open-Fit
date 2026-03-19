import '../entities/workout_stats.dart';
import '../../repositories/i_repositories.dart';

/// Use case: Start a new workout
class StartWorkoutUseCase {
  final IWorkoutRepository _repository;
  
  StartWorkoutUseCase(this._repository);
  
  Future<WorkoutLog> call(String name) async {
    // Check if workout already in progress
    final existing = await _repository.getInProgress();
    if (existing != null) {
      throw WorkoutAlreadyInProgressException();
    }
    
    // Create new workout
    await _repository.startWorkout(name);
    
    final workout = await _repository.getInProgress();
    if (workout == null) {
      throw FailedToStartWorkoutException();
    }
    
    return workout;
  }
}

/// Use case: Add exercise to active workout
class AddExerciseToWorkoutUseCase {
  final IWorkoutRepository _repository;
  
  AddExerciseToWorkoutUseCase(this._repository);
  
  Future<void> call(LoggedExercise exercise) async {
    final workout = await _repository.getInProgress();
    if (workout == null) {
      throw NoActiveWorkoutException();
    }
    
    await _repository.addExercise(workout.uuid, exercise);
  }
}

/// Use case: Complete a set
class CompleteSetUseCase {
  final IWorkoutRepository _repository;
  
  CompleteSetUseCase(this._repository);
  
  Future<void> call(WorkoutSet set, {double? weight, int? reps, int? rpe}) async {
    final workout = await _repository.getInProgress();
    if (workout == null) {
      throw NoActiveWorkoutException();
    }
    
    // Update set values
    set.weight = weight ?? set.weight;
    set.reps = reps ?? set.reps;
    set.rpe = rpe ?? set.rpe;
    set.isComplete = true;
    
    await _repository.completeSet(workout.uuid, set);
  }
}

/// Use case: Finish workout
class FinishWorkoutUseCase {
  final IWorkoutRepository _repository;
  
  FinishWorkoutUseCase(this._repository);
  
  Future<WorkoutLog> call({int? rating, int? energyLevel, String? notes}) async {
    final workout = await _repository.getInProgress();
    if (workout == null) {
      throw NoActiveWorkoutException();
    }
    
    await _repository.finishWorkout(
      workout.uuid,
      rating: rating,
      energyLevel: energyLevel,
      notes: notes,
    );
    
    return workout;
  }
}

/// Use case: Get workout statistics
class GetWorkoutStatsUseCase {
  final IWorkoutRepository _repository;
  
  GetWorkoutStatsUseCase(this._repository);
  
  Future<WorkoutStatsEntity> call() async {
    return await _repository.getStats();
  }
}

/// Use case: Get workout history
class GetWorkoutHistoryUseCase {
  final IWorkoutRepository _repository;
  
  GetWorkoutHistoryUseCase(this._repository);
  
  Future<List<WorkoutLog>> call({int limit = 10, DateTime? startDate, DateTime? endDate}) async {
    return await _repository.getHistory(
      limit: limit,
      startDate: startDate,
      endDate: endDate,
    );
  }
}

/// Exceptions
class WorkoutAlreadyInProgressException implements Exception {
  final String message;
  
  WorkoutAlreadyInProgressException([this.message = 'A workout is already in progress']);
}

class NoActiveWorkoutException implements Exception {
  final String message;
  
  NoActiveWorkoutException([this.message = 'No active workout found']);
}

class FailedToStartWorkoutException implements Exception {
  final String message;
  
  FailedToStartWorkoutException([this.message = 'Failed to start workout']);
}
