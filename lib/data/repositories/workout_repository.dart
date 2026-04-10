import 'package:isar/isar.dart';
import '../models/workout_log.dart';

/// Repository interface for workouts
abstract class WorkoutRepositoryBase {
  Future<List<WorkoutLog>> getAll();
  Future<List<WorkoutLog>> getRecent(int limit);
  Future<WorkoutLog?> getByUuid(String uuid);
  Future<List<WorkoutLog>> getInDateRange(DateTime start, DateTime end);
  Future<WorkoutLog?> getWorkoutInProgress();
  Future<void> create(WorkoutLog workout);
  Future<void> update(WorkoutLog workout);
  Future<void> delete(int id);
  Future<WorkoutStats> getStats();
}

/// Isar implementation of WorkoutRepository
class WorkoutRepository implements WorkoutRepositoryBase {
  final Isar _isar;
  
  WorkoutRepository(this._isar);
  
  @override
  Future<List<WorkoutLog>> getAll() async {
    return await _isar.workoutLogs.where().sortByStartTimeDesc().findAll();
  }
  
  @override
  Future<List<WorkoutLog>> getRecent(int limit) async {
    return await _isar.workoutLogs
        .where()
        .sortByStartTimeDesc()
        .limit(limit)
        .findAll();
  }
  
  @override
  Future<WorkoutLog?> getByUuid(String uuid) async {
    return await _isar.workoutLogs.filter().uuidEqualTo(uuid).findFirst();
  }
  
  @override
  Future<List<WorkoutLog>> getInDateRange(DateTime start, DateTime end) async {
    return await _isar.workoutLogs
        .filter()
        .startTimeBetween(start, end)
        .sortByStartTimeDesc()
        .findAll();
  }
  
  @override
  Future<WorkoutLog?> getWorkoutInProgress() async {
    return await _isar.workoutLogs
        .filter()
        .endTimeIsNull()
        .findFirst();
  }
  
  @override
  Future<void> create(WorkoutLog workout) async {
    await _isar.writeTxn(() async {
      await _isar.workoutLogs.put(workout);
    });
  }
  
  @override
  Future<void> update(WorkoutLog workout) async {
    await _isar.writeTxn(() async {
      await _isar.workoutLogs.put(workout);
    });
  }
  
  @override
  Future<void> delete(int id) async {
    await _isar.writeTxn(() async {
      await _isar.workoutLogs.delete(id);
    });
  }
  
  @override
  Future<WorkoutStats> getStats() async {
    final workouts = await getAll();
    final completedWorkouts = workouts.where((w) => !w.isInProgress).toList();
    
    if (completedWorkouts.isEmpty) {
      return WorkoutStats.empty();
    }
    
    final totalWorkouts = completedWorkouts.length;
    final totalSets = completedWorkouts.fold(0, (sum, w) => sum + w.totalSets);
    final totalVolume = completedWorkouts.fold(0.0, (sum, w) => sum + w.totalVolume);
    final avgDuration = completedWorkouts.fold(0, (sum, w) => sum + w.durationMinutes) ~/ totalWorkouts;
    
    int currentStreak = 0;
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    
    for (int i = 0; i < 365; i++) {
      final checkDate = today.subtract(Duration(days: i));
      final hasWorkout = completedWorkouts.any((w) {
        final workoutDate = DateTime(
          w.startTime.year,
          w.startTime.month,
          w.startTime.day,
        );
        return workoutDate == checkDate;
      });
      
      if (hasWorkout) {
        currentStreak++;
      } else if (i > 0) {
        break;
      }
    }
    
    return WorkoutStats(
      totalWorkouts: totalWorkouts,
      totalSets: totalSets,
      totalVolume: totalVolume,
      averageWorkoutDuration: Duration(minutes: avgDuration),
      currentStreak: currentStreak,
    );
  }
}

/// Computed workout statistics
class WorkoutStats {
  final int totalWorkouts;
  final int totalSets;
  final double totalVolume;
  final int currentStreak;
  final Duration? averageWorkoutDuration;
  final DateTime? lastWorkoutDate;

  WorkoutStats({
    required this.totalWorkouts,
    required this.totalSets,
    required this.totalVolume,
    required this.currentStreak,
    this.averageWorkoutDuration,
    this.lastWorkoutDate,
  });

  factory WorkoutStats.empty() => WorkoutStats(
    totalWorkouts: 0, totalSets: 0, totalVolume: 0, currentStreak: 0,
  );
}
