import 'package:isar/isar.dart';

part 'glucose.g.dart';

/// Glucose reading context (when it was taken)
enum GlucoseContext {
  fasting,      // Before breakfast, no food for 8+ hours
  preMeal,      // Before a meal
  postMeal,     // 1-2 hours after eating
  bedtime,      // Before sleep
  general,      // Random/other
}

/// Glucose unit system
enum GlucoseUnit {
  mgDl,  // mg/dL (US standard)
  mmolL, // mmol/L (International)
}

/// A single glucose reading
@Collection()
class GlucoseReading {
  Id id = Isar.autoIncrement;

  /// UUID for syncing
  @Index(unique: true)
  late String uuid;

  /// When the reading was taken
  late DateTime timestamp;

  /// Glucose value (stored in mg/dL internally)
  late double valueMgDl;

  /// Context of the reading
  @Enumerated(EnumType.name)
  late GlucoseContext context;

  /// Notes (e.g., "after pizza", "feeling dizzy")
  String? notes;

  /// Tags for filtering
  List<String> tags = [];

  /// Whether this reading is in target range
  @ignore
  bool get isInNormalRange {
    // Normal ranges in mg/dL
    switch (context) {
      case GlucoseContext.fasting:
        return valueMgDl >= 70 && valueMgDl <= 100;
      case GlucoseContext.preMeal:
        return valueMgDl >= 70 && valueMgDl <= 130;
      case GlucoseContext.postMeal:
        return valueMgDl >= 70 && valueMgDl <= 180;
      case GlucoseContext.bedtime:
        return valueMgDl >= 100 && valueMgDl <= 140;
      case GlucoseContext.general:
        return valueMgDl >= 70 && valueMgDl <= 140;
    }
  }

  /// Get glucose classification
  @ignore
  GlucoseClassification get classification {
    if (valueMgDl < 70) return GlucoseClassification.low;
    if (valueMgDl < 100) return GlucoseClassification.normal;
    if (valueMgDl < 126) return GlucoseClassification.elevated;
    if (valueMgDl < 200) return GlucoseClassification.high;
    return GlucoseClassification.veryHigh;
  }

  /// Convert to display value based on unit
  double getDisplayValue(GlucoseUnit unit) {
    if (unit == GlucoseUnit.mmolL) {
      // mg/dL to mmol/L: divide by 18
      return valueMgDl / 18.0;
    }
    return valueMgDl;
  }

  /// Get display string with unit
  String getDisplayString(GlucoseUnit unit) {
    final value = getDisplayValue(unit);
    final unitStr = unit == GlucoseUnit.mgDl ? 'mg/dL' : 'mmol/L';
    return '${value.toStringAsFixed(unit == GlucoseUnit.mgDl ? 0 : 1)} $unitStr';
  }

  GlucoseReading({
    required this.uuid,
    required this.timestamp,
    required this.valueMgDl,
    required this.context,
    this.notes,
    this.tags = const [],
  });
}

/// Glucose classification for visual feedback
enum GlucoseClassification {
  low,       // < 70 mg/dL - Hypoglycemia
  normal,    // 70-99 mg/dL
  elevated,  // 100-125 mg/dL - Prediabetic range
  high,      // 126-199 mg/dL
  veryHigh,  // >= 200 mg/dL - Hyperglycemia
}

/// Daily glucose summary
class DailyGlucoseSummary {
  final DateTime date;
  final List<GlucoseReading> readings;
  
  const DailyGlucoseSummary({
    required this.date,
    required this.readings,
  });

  /// Average glucose for the day
  double get average {
    if (readings.isEmpty) return 0;
    return readings.fold<double>(0, (sum, r) => sum + r.valueMgDl) / readings.length;
  }

  /// Minimum reading
  double get min {
    if (readings.isEmpty) return 0;
    return readings.map((r) => r.valueMgDl).reduce((a, b) => a < b ? a : b);
  }

  /// Maximum reading
  double get max {
    if (readings.isEmpty) return 0;
    return readings.map((r) => r.valueMgDl).reduce((a, b) => a > b ? a : b);
  }

  /// Percentage in range (70-180 mg/dL)
  double get timeInRange {
    if (readings.isEmpty) return 0;
    final inRange = readings.where((r) => r.valueMgDl >= 70 && r.valueMgDl <= 180).length;
    return (inRange / readings.length) * 100;
  }

  /// Estimated A1C based on average glucose
  /// Formula: A1C = (average glucose + 46.7) / 28.7
  double get estimatedA1C {
    if (readings.isEmpty) return 0;
    return (average + 46.7) / 28.7;
  }

  /// Count by classification
  Map<GlucoseClassification, int> get classificationCounts {
    final counts = <GlucoseClassification, int>{
      GlucoseClassification.low: 0,
      GlucoseClassification.normal: 0,
      GlucoseClassification.elevated: 0,
      GlucoseClassification.high: 0,
      GlucoseClassification.veryHigh: 0,
    };
    for (final reading in readings) {
      counts[reading.classification] = (counts[reading.classification] ?? 0) + 1;
    }
    return counts;
  }
}

/// Glucose target ranges (customizable)
@Collection()
class GlucoseTargets {
  Id id = Isar.autoIncrement;

  /// Fasting target low (mg/dL)
  double fastingLow = 70;

  /// Fasting target high (mg/dL)
  double fastingHigh = 100;

  /// Pre-meal target low (mg/dL)
  double preMealLow = 70;

  /// Pre-meal target high (mg/dL)
  double preMealHigh = 130;

  /// Post-meal target low (mg/dL)
  double postMealLow = 70;

  /// Post-meal target high (mg/dL)
  double postMealHigh = 180;

  /// Display unit preference
  @Enumerated(EnumType.name)
  GlucoseUnit displayUnit = GlucoseUnit.mgDl;

  GlucoseTargets({
    this.fastingLow = 70,
    this.fastingHigh = 100,
    this.preMealLow = 70,
    this.preMealHigh = 130,
    this.postMealLow = 70,
    this.postMealHigh = 180,
    this.displayUnit = GlucoseUnit.mgDl,
  });

  /// Get target range for a specific context
  (double, double) getRangeForContext(GlucoseContext context) {
    switch (context) {
      case GlucoseContext.fasting:
        return (fastingLow, fastingHigh);
      case GlucoseContext.preMeal:
        return (preMealLow, preMealHigh);
      case GlucoseContext.postMeal:
        return (postMealLow, postMealHigh);
      case GlucoseContext.bedtime:
        return (100, 140);
      case GlucoseContext.general:
        return (70, 140);
    }
  }
}
