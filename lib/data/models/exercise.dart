import 'package:isar/isar.dart';

part 'exercise.g.dart';

/// Muscle groups for exercises
enum MuscleGroup {
  chest,
  back,
  shoulders,
  biceps,
  triceps,
  legs,
  quads,
  hamstrings,
  calves,
  abs,
  core,
  glutes,
  forearms,
  traps,
  lats,
  fullBody,
}

/// Equipment types
enum Equipment {
  none, // Bodyweight
  dumbbell,
  barbell,
  kettlebell,
  machine,
  cable,
  resistanceBand,
  smithMachine,
  ezBar,
  pullUpBar,
  bench,
  other,
}

/// Exercise categories
enum ExerciseCategory {
  strength,
  cardio,
  flexibility,
  plyometric,
  olympic,
  strongman,
}

@Collection()
class Exercise {
  Id id = Isar.autoIncrement;

  /// Unique identifier for syncing/sharing
  @Index(unique: true)
  late String uuid;

  /// Exercise name (e.g., "Bench Press")
  late String name;

  /// Alternative names (e.g., ["Barbell Bench Press", "Chest Press"])
  List<String> alternativeNames = [];

  /// Primary muscle group targeted
  @Enumerated(EnumType.name)
  late MuscleGroup primaryMuscleGroup;

  /// Secondary muscle groups
  @enumerated
  List<MuscleGroup> secondaryMuscleGroups = [];

  /// Equipment required
  @Enumerated(EnumType.name)
  late Equipment equipment;

  /// Exercise category
  @Enumerated(EnumType.name)
  late ExerciseCategory category;

  /// Step-by-step instructions
  List<String> instructions = [];

  /// Tips for proper form
  List<String> tips = [];

  /// Common mistakes to avoid
  List<String> commonMistakes = [];

  /// URL to video demonstration
  String? videoUrl;

  /// Is this a custom user-created exercise?
  bool isCustom = false;

  /// Creation timestamp
  late DateTime createdAt;

  /// Last updated timestamp
  late DateTime updatedAt;

  Exercise({
    required this.uuid,
    required this.name,
    required this.primaryMuscleGroup,
    required this.equipment,
    required this.category,
    this.instructions = const [],
    this.tips = const [],
    this.commonMistakes = const [],
  }) {
    createdAt = DateTime.now();
    updatedAt = DateTime.now();
  }

  /// Full name including equipment hint
  String get displayName {
    final equipmentHint = equipment == Equipment.none
        ? '(Bodyweight)'
        : '(${equipment.name})';
    return '$name $equipmentHint';
  }
}

/// Default exercise library - pre-populated on first launch
List<Exercise> getDefaultExercises() {
  return [
    // Chest
    Exercise(
      uuid: 'bench_press_bb',
      name: 'Bench Press',
      primaryMuscleGroup: MuscleGroup.chest,
      equipment: Equipment.barbell,
      category: ExerciseCategory.strength,
      instructions: [
        'Lie flat on a bench with eyes under the bar',
        'Grip the bar with hands slightly wider than shoulder-width',
        'Unrack the bar and lower it to your mid-chest',
        'Press the bar back up to starting position',
      ],
      tips: [
        'Keep your feet flat on the floor',
        'Maintain a slight arch in your back',
        'Keep your shoulder blades retracted',
      ],
    )..secondaryMuscleGroups.addAll([MuscleGroup.triceps, MuscleGroup.shoulders]),
    
    Exercise(
      uuid: 'incline_press_bb',
      name: 'Incline Bench Press',
      primaryMuscleGroup: MuscleGroup.chest,
      equipment: Equipment.barbell,
      category: ExerciseCategory.strength,
      instructions: [
        'Set bench to 30-45 degree incline',
        'Lie back with eyes under the bar',
        'Press the bar up and slightly back',
        'Lower to upper chest, then press up',
      ],
    )..secondaryMuscleGroups.addAll([MuscleGroup.shoulders, MuscleGroup.triceps]),
    
    Exercise(
      uuid: 'dumbbell_flye',
      name: 'Dumbbell Flye',
      primaryMuscleGroup: MuscleGroup.chest,
      equipment: Equipment.dumbbell,
      category: ExerciseCategory.strength,
      instructions: [
        'Lie on bench holding dumbbells above chest',
        'Slightly bend elbows and lower arms out to sides',
        'Feel stretch in chest, then bring dumbbells back up',
        'Squeeze chest at the top',
      ],
    )..secondaryMuscleGroups.add(MuscleGroup.shoulders),
    
    Exercise(
      uuid: 'push_up',
      name: 'Push-Up',
      primaryMuscleGroup: MuscleGroup.chest,
      equipment: Equipment.none,
      category: ExerciseCategory.strength,
      instructions: [
        'Start in plank position with hands under shoulders',
        'Lower body until chest nearly touches floor',
        'Push back up to starting position',
      ],
    )..secondaryMuscleGroups.addAll([MuscleGroup.triceps, MuscleGroup.shoulders]),
    
    // Back
    Exercise(
      uuid: 'deadlift',
      name: 'Deadlift',
      primaryMuscleGroup: MuscleGroup.back,
      equipment: Equipment.barbell,
      category: ExerciseCategory.strength,
      instructions: [
        'Stand with feet hip-width apart, bar over mid-foot',
        'Bend at hips and knees to grip the bar',
        'Keep back flat, chest up, drive through heels',
        'Stand up straight, then lower with control',
      ],
    )..secondaryMuscleGroups.addAll([
      MuscleGroup.hamstrings,
      MuscleGroup.glutes,
      MuscleGroup.traps,
      MuscleGroup.forearms,
    ]),
    
    Exercise(
      uuid: 'pull_up',
      name: 'Pull-Up',
      primaryMuscleGroup: MuscleGroup.back,
      equipment: Equipment.pullUpBar,
      category: ExerciseCategory.strength,
      instructions: [
        'Hang from bar with palms facing away',
        'Pull body up until chin clears bar',
        'Lower with control to full arm extension',
      ],
    )..secondaryMuscleGroups.addAll([MuscleGroup.biceps, MuscleGroup.lats]),
    
    Exercise(
      uuid: 'barbell_row',
      name: 'Barbell Row',
      primaryMuscleGroup: MuscleGroup.back,
      equipment: Equipment.barbell,
      category: ExerciseCategory.strength,
      instructions: [
        'Bend at hips until torso is nearly parallel to floor',
        'Grip bar with hands shoulder-width apart',
        'Pull bar to lower chest/upper abdomen',
        'Lower with control',
      ],
    )..secondaryMuscleGroups.addAll([MuscleGroup.biceps, MuscleGroup.lats, MuscleGroup.traps]),
    
    Exercise(
      uuid: 'lat_pulldown',
      name: 'Lat Pulldown',
      primaryMuscleGroup: MuscleGroup.back,
      equipment: Equipment.machine,
      category: ExerciseCategory.strength,
      instructions: [
        'Sit at machine with thighs under pads',
        'Grip bar wider than shoulder-width',
        'Pull bar down to upper chest',
        'Return with control, feel stretch in lats',
      ],
    )..secondaryMuscleGroups.addAll([MuscleGroup.biceps, MuscleGroup.lats]),
    
    // Shoulders
    Exercise(
      uuid: 'overhead_press_bb',
      name: 'Overhead Press',
      primaryMuscleGroup: MuscleGroup.shoulders,
      equipment: Equipment.barbell,
      category: ExerciseCategory.strength,
      instructions: [
        'Stand with bar at upper chest, grip just outside shoulders',
        'Brace core, press bar straight up',
        'Lock out elbows at top',
        'Lower with control to chest',
      ],
    )..secondaryMuscleGroups.addAll([MuscleGroup.triceps, MuscleGroup.traps]),
    
    Exercise(
      uuid: 'lateral_raise',
      name: 'Lateral Raise',
      primaryMuscleGroup: MuscleGroup.shoulders,
      equipment: Equipment.dumbbell,
      category: ExerciseCategory.strength,
      instructions: [
        'Stand holding dumbbells at sides',
        'Raise arms out to sides until parallel with floor',
        'Lower with control',
      ],
    ),
    
    // Legs
    Exercise(
      uuid: 'squat_bb',
      name: 'Barbell Squat',
      primaryMuscleGroup: MuscleGroup.legs,
      equipment: Equipment.barbell,
      category: ExerciseCategory.strength,
      instructions: [
        'Position bar on upper back/shoulders',
        'Stand with feet shoulder-width apart',
        'Break at hips and knees simultaneously',
        'Lower until thighs are parallel to floor',
        'Drive through heels to stand',
      ],
    )..secondaryMuscleGroups.addAll([MuscleGroup.glutes, MuscleGroup.core]),
    
    Exercise(
      uuid: 'leg_press',
      name: 'Leg Press',
      primaryMuscleGroup: MuscleGroup.legs,
      equipment: Equipment.machine,
      category: ExerciseCategory.strength,
      instructions: [
        'Sit in machine with back flat against pad',
        'Place feet shoulder-width on platform',
        'Lower platform by bending knees',
        'Press platform away by extending legs',
      ],
    )..secondaryMuscleGroups.add(MuscleGroup.glutes),
    
    Exercise(
      uuid: 'romanian_deadlift',
      name: 'Romanian Deadlift',
      primaryMuscleGroup: MuscleGroup.hamstrings,
      equipment: Equipment.barbell,
      category: ExerciseCategory.strength,
      instructions: [
        'Hold bar at hip level with slight knee bend',
        'Hinge at hips, pushing them back',
        'Lower bar along legs until you feel hamstring stretch',
        'Drive hips forward to return to standing',
      ],
    )..secondaryMuscleGroups.addAll([MuscleGroup.glutes, MuscleGroup.back]),
    
    Exercise(
      uuid: 'leg_curl',
      name: 'Leg Curl',
      primaryMuscleGroup: MuscleGroup.hamstrings,
      equipment: Equipment.machine,
      category: ExerciseCategory.strength,
      instructions: [
        'Lie face down with ankles under pad',
        'Curl heels toward glutes',
        'Lower with control',
      ],
    ),
    
    Exercise(
      uuid: 'calf_raise',
      name: 'Calf Raise',
      primaryMuscleGroup: MuscleGroup.calves,
      equipment: Equipment.machine,
      category: ExerciseCategory.strength,
      instructions: [
        'Stand with balls of feet on platform',
        'Lower heels below platform level',
        'Rise up on toes as high as possible',
        'Lower with control',
      ],
    ),
    
    // Arms
    Exercise(
      uuid: 'bicep_curl_db',
      name: 'Bicep Curl',
      primaryMuscleGroup: MuscleGroup.biceps,
      equipment: Equipment.dumbbell,
      category: ExerciseCategory.strength,
      instructions: [
        'Stand holding dumbbells at sides, palms facing forward',
        'Curl weights up toward shoulders',
        'Squeeze biceps at top',
        'Lower with control',
      ],
    )..secondaryMuscleGroups.add(MuscleGroup.forearms),
    
    Exercise(
      uuid: 'tricep_pushdown',
      name: 'Tricep Pushdown',
      primaryMuscleGroup: MuscleGroup.triceps,
      equipment: Equipment.cable,
      category: ExerciseCategory.strength,
      instructions: [
        'Stand at cable machine with bar/rope attachment',
        'Start with elbows at 90 degrees',
        'Push bar down until arms are fully extended',
        'Return with control',
      ],
    ),
    
    Exercise(
      uuid: 'skullcrusher',
      name: 'Skullcrusher',
      primaryMuscleGroup: MuscleGroup.triceps,
      equipment: Equipment.ezBar,
      category: ExerciseCategory.strength,
      instructions: [
        'Lie on bench holding EZ bar with narrow grip',
        'Start with arms extended over chest',
        'Bend elbows, lowering bar toward forehead',
        'Extend arms to return to start',
      ],
    ),
    
    // Core
    Exercise(
      uuid: 'plank',
      name: 'Plank',
      primaryMuscleGroup: MuscleGroup.core,
      equipment: Equipment.none,
      category: ExerciseCategory.strength,
      instructions: [
        'Start in push-up position',
        'Lower to forearms, elbows under shoulders',
        'Keep body in straight line from head to heels',
        'Hold position',
      ],
    )..secondaryMuscleGroups.addAll([MuscleGroup.abs, MuscleGroup.shoulders]),
    
    Exercise(
      uuid: 'crunch',
      name: 'Crunch',
      primaryMuscleGroup: MuscleGroup.abs,
      equipment: Equipment.none,
      category: ExerciseCategory.strength,
      instructions: [
        'Lie on back with knees bent, feet flat',
        'Place hands behind head (don\'t pull)',
        'Lift shoulders off floor using abs',
        'Lower with control',
      ],
    ),
    
    // Cardio
    Exercise(
      uuid: 'treadmill_run',
      name: 'Treadmill Run',
      primaryMuscleGroup: MuscleGroup.legs,
      equipment: Equipment.machine,
      category: ExerciseCategory.cardio,
      instructions: [
        'Set treadmill to desired speed',
        'Start walking or running',
        'Maintain good posture',
      ],
    ),
    
    Exercise(
      uuid: 'jump_rope',
      name: 'Jump Rope',
      primaryMuscleGroup: MuscleGroup.calves,
      equipment: Equipment.other,
      category: ExerciseCategory.cardio,
      instructions: [
        'Hold rope handles at hip height',
        'Swing rope over head and jump as it passes feet',
        'Land softly on balls of feet',
      ],
    ),
  ];
}
