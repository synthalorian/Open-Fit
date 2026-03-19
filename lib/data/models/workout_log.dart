import 'package:isar/isar.dart';
import 'exercise.dart';

part 'workout_log.g.dart';

/// A single set within an exercise
@embedded
class WorkoutSet {
  /// Set number (1, 2, 3, etc.)
  int setNumber = 1;

  /// Weight lifted (in user's preferred unit)
  double? weight;

  /// Number of reps performed
  int? reps;

  /// Rate of Perceived Exertion (1-10 scale)
  int? rpe;

  /// Whether this set was to failure
  bool toFailure = false;

  /// Whether this was a warmup set
  bool isWarmup = false;

  /// Whether this was a drop set
  bool isDropSet = false;

  /// Notes for this specific set
  String? notes;

  /// Whether this set is complete
  bool isComplete = false;

  /// Target reps (for planned workouts)
  int? targetReps;

  /// Target weight (for planned workouts)
  double? targetWeight;
}

/// An exercise performed within a workout, with its sets
@embedded
class LoggedExercise {
  /// Reference to the exercise (stored as UUID string for flexibility)
  String exerciseUuid = '';

  /// Exercise name (cached for display)
  String exerciseName = '';

  /// Primary muscle group (cached)
  @Enumerated(EnumType.name)
  MuscleGroup muscleGroup = MuscleGroup.chest;

  /// All sets performed for this exercise
  List<WorkoutSet> sets = [];

  /// Notes for this exercise in this workout
  String? notes;

  /// Order in the workout
  int orderIndex = 0;

  /// Rest timer duration in seconds (between sets)
  int restSeconds = 90;

  /// Get completed sets only
  @ignore
  List<WorkoutSet> get completedSets => sets.where((s) => s.isComplete).toList();

  /// Get total volume (weight * reps) for this exercise
  @ignore
  double get totalVolume {
    double volume = 0;
    for (final set in completedSets) {
      if (set.weight != null && set.reps != null) {
        volume += set.weight! * set.reps!;
      }
    }
    return volume;
  }

  /// Get best set (highest weight)
  @ignore
  WorkoutSet? get bestSet {
    if (completedSets.isEmpty) return null;
    return completedSets.reduce((a, b) =>
        (a.weight ?? 0) > (b.weight ?? 0) ? a : b);
  }

  /// Get heaviest weight lifted
  @ignore
  double? get maxWeight => bestSet?.weight;

  /// Get total reps across all sets
  @ignore
  int get totalReps {
    return completedSets.fold(0, (sum, set) => sum + (set.reps ?? 0));
  }
}

/// A complete workout session
@Collection()
class WorkoutLog {
  Id id = Isar.autoIncrement;

  /// UUID for syncing/sharing
  @Index(unique: true)
  late String uuid;

  /// Workout name/title
  late String name;

  /// When the workout started
  late DateTime startTime;

  /// When the workout ended (null if in progress)
  DateTime? endTime;

  /// All exercises performed
  List<LoggedExercise> exercises = [];

  /// Overall workout notes
  String? notes;

  /// User's rating of the workout (1-5)
  int? rating;

  /// How the user felt (energy level 1-10)
  int? energyLevel;

  /// Workout duration in minutes (calculated from start/end)
  @ignore
  int get durationMinutes {
    if (endTime == null) {
      return DateTime.now().difference(startTime).inMinutes;
    }
    return endTime!.difference(startTime).inMinutes;
  }

  /// Whether this workout is currently in progress
  @ignore
  bool get isInProgress => endTime == null;

  /// Total number of sets completed
  @ignore
  int get totalSets {
    return exercises.fold(
      0,
      (sum, ex) => sum + ex.completedSets.length,
    );
  }

  /// Total volume across all exercises
  @ignore
  double get totalVolume {
    return exercises.fold(0, (sum, ex) => sum + ex.totalVolume);
  }

  /// Get all muscle groups worked
  @ignore
  Set<MuscleGroup> get muscleGroupsWorked {
    return exercises.map((e) => e.muscleGroup).toSet();
  }

  /// Get exercises by muscle group
  @ignore
  List<LoggedExercise> getExercisesByMuscleGroup(MuscleGroup group) {
    return exercises.where((e) => e.muscleGroup == group).toList();
  }

  WorkoutLog({
    required this.uuid,
    required this.name,
    required this.startTime,
    this.endTime,
    this.exercises = const [],
    this.notes,
    this.rating,
    this.energyLevel,
  });

  /// Create a new workout in progress
  factory WorkoutLog.inProgress({
    required String uuid,
    required String name,
  }) {
    return WorkoutLog(
      uuid: uuid,
      name: name,
      startTime: DateTime.now(),
    );
  }

  /// Mark workout as complete
  void complete() {
    endTime = DateTime.now();
  }
}

/// Personal Record for an exercise
@Collection()
class PersonalRecord {
  Id id = Isar.autoIncrement;

  /// Exercise UUID
  late String exerciseUuid;

  /// Type of PR
  @Enumerated(EnumType.name)
  late PRType type;

  /// The value (weight, reps, or time)
  late double value;

  /// When this PR was set
  late DateTime date;

  /// The workout log where this was achieved
  String? workoutLogUuid;

  /// Previous PR value (for comparison)
  double? previousValue;

  PersonalRecord({
    required this.exerciseUuid,
    required this.type,
    required this.value,
    required this.date,
    this.workoutLogUuid,
    this.previousValue,
  });
}

enum PRType {
  maxWeight, // Heaviest single lift
  maxReps, // Most reps at a given weight
  maxVolume, // Total volume for exercise
  bestSet, // Best weight × reps combination
}
