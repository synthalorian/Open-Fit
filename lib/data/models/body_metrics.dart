import 'package:isar/isar.dart';

part 'body_metrics.g.dart';

/// Body measurement entry
@Collection()
class BodyMeasurement {
  Id id = Isar.autoIncrement;

  /// UUID for syncing
  @Index(unique: true)
  late String uuid;

  /// Date of measurement
  late DateTime date;

  /// Weight (in user's preferred unit - stored in kg)
  double? weightKg;

  /// Body fat percentage
  double? bodyFatPercent;

  /// Chest measurement (cm)
  double? chestCm;

  /// Waist measurement (cm)
  double? waistCm;

  /// Hips measurement (cm)
  double? hipsCm;

  /// Left arm measurement (cm)
  double? leftArmCm;

  /// Right arm measurement (cm)
  double? rightArmCm;

  /// Left thigh measurement (cm)
  double? leftThighCm;

  /// Right thigh measurement (cm)
  double? rightThighCm;

  /// Left calf measurement (cm)
  double? leftCalfCm;

  /// Right calf measurement (cm)
  double? rightCalfCm;

  /// Neck measurement (cm)
  double? neckCm;

  /// Shoulders measurement (cm)
  double? shouldersCm;

  /// Notes
  String? notes;

  /// Progress photo path (local storage)
  String? photoPath;

  /// Creation timestamp
  late DateTime createdAt;

  BodyMeasurement({
    required this.uuid,
    required this.date,
    this.weightKg,
    this.bodyFatPercent,
    this.chestCm,
    this.waistCm,
    this.hipsCm,
    this.leftArmCm,
    this.rightArmCm,
    this.leftThighCm,
    this.rightThighCm,
    this.leftCalfCm,
    this.rightCalfCm,
    this.neckCm,
    this.shouldersCm,
    this.notes,
    this.photoPath,
  }) {
    createdAt = DateTime.now();
  }

  /// Get all measurements as a map
  @ignore
  Map<String, double?> get allMeasurements => {
    'weight': weightKg,
    'bodyFat': bodyFatPercent,
    'chest': chestCm,
    'waist': waistCm,
    'hips': hipsCm,
    'leftArm': leftArmCm,
    'rightArm': rightArmCm,
    'leftThigh': leftThighCm,
    'rightThigh': rightThighCm,
    'leftCalf': leftCalfCm,
    'rightCalf': rightCalfCm,
    'neck': neckCm,
    'shoulders': shouldersCm,
  };

  /// Count of non-null measurements
  @ignore
  int get measurementCount {
    return allMeasurements.values.where((v) => v != null).length;
  }

  /// BMI calculation (requires height in meters)
  double? calculateBMI(double heightMeters) {
    if (weightKg == null || heightMeters <= 0) return null;
    return weightKg! / (heightMeters * heightMeters);
  }

  /// Get BMI category
  static String getBMICategory(double bmi) {
    if (bmi < 18.5) return 'Underweight';
    if (bmi < 25) return 'Normal';
    if (bmi < 30) return 'Overweight';
    return 'Obese';
  }

  /// Lean body mass calculation
  double? get leanBodyMass {
    if (weightKg == null || bodyFatPercent == null) return null;
    return weightKg! * (1 - bodyFatPercent! / 100);
  }

  /// Fat mass calculation
  double? get fatMass {
    if (weightKg == null || bodyFatPercent == null) return null;
    return weightKg! * (bodyFatPercent! / 100);
  }
}

/// Weight unit preference
enum WeightUnit {
  kg,
  lbs,
}

/// Length unit preference
enum LengthUnit {
  cm,
  inches,
}

/// User profile with height and goals
@Collection()
class UserProfile {
  Id id = Isar.autoIncrement;

  /// User's name
  String name = '';

  /// Height in cm
  double? heightCm;

  /// Date of birth
  DateTime? dateOfBirth;

  /// Biological sex (for body fat calculations)
  @Enumerated(EnumType.name)
  BiologicalSex? biologicalSex;

  /// Weight unit preference
  @Enumerated(EnumType.name)
  WeightUnit weightUnit = WeightUnit.kg;

  /// Length unit preference
  @Enumerated(EnumType.name)
  LengthUnit lengthUnit = LengthUnit.cm;

  /// Target weight (kg)
  double? targetWeightKg;

  /// Target body fat %
  double? targetBodyFatPercent;

  /// Activity level (for calorie calculations)
  @Enumerated(EnumType.name)
  ActivityLevel activityLevel = ActivityLevel.moderate;

  UserProfile({
    this.name = '',
    this.heightCm,
    this.dateOfBirth,
    this.biologicalSex,
    this.weightUnit = WeightUnit.kg,
    this.lengthUnit = LengthUnit.cm,
    this.targetWeightKg,
    this.targetBodyFatPercent,
    this.activityLevel = ActivityLevel.moderate,
  });

  /// Get age in years
  int? get age {
    if (dateOfBirth == null) return null;
    final now = DateTime.now();
    int age = now.year - dateOfBirth!.year;
    if (now.month < dateOfBirth!.month ||
        (now.month == dateOfBirth!.month && now.day < dateOfBirth!.day)) {
      age--;
    }
    return age;
  }

  /// Get height in meters
  double? get heightMeters {
    if (heightCm == null) return null;
    return heightCm! / 100;
  }

  /// Convert weight from stored kg to display unit
  double convertWeightToDisplay(double weightKg) {
    if (weightUnit == WeightUnit.lbs) {
      return weightKg * 2.20462;
    }
    return weightKg;
  }

  /// Convert weight from display unit to kg
  double convertWeightToKg(double displayWeight) {
    if (weightUnit == WeightUnit.lbs) {
      return displayWeight / 2.20462;
    }
    return displayWeight;
  }

  /// Convert length from stored cm to display unit
  double convertLengthToDisplay(double lengthCm) {
    if (lengthUnit == LengthUnit.inches) {
      return lengthCm / 2.54;
    }
    return lengthCm;
  }

  /// Convert length from display unit to cm
  double convertLengthToCm(double displayLength) {
    if (lengthUnit == LengthUnit.inches) {
      return displayLength * 2.54;
    }
    return displayLength;
  }
}

enum BiologicalSex {
  male,
  female,
}

enum ActivityLevel {
  sedentary,    // Little or no exercise
  light,        // Light exercise 1-3 days/week
  moderate,     // Moderate exercise 3-5 days/week
  active,       // Hard exercise 6-7 days/week
  veryActive,   // Very hard exercise & physical job
}

/// Weight statistics for a period
class WeightStats {
  final double startWeight;
  final double endWeight;
  final double minWeight;
  final double maxWeight;
  final double averageWeight;
  final double change;
  final double changePercent;
  final int days;

  const WeightStats({
    required this.startWeight,
    required this.endWeight,
    required this.minWeight,
    required this.maxWeight,
    required this.averageWeight,
    required this.change,
    required this.changePercent,
    required this.days,
  });

  bool get isLoss => change < 0;
  bool get isGain => change > 0;
  bool get isStable => change.abs() < 0.1;
}
