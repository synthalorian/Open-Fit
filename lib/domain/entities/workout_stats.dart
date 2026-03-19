/// Domain entity for workout stats
class WorkoutStatsEntity {
  final int totalWorkouts;
  final int totalSets;
  final double totalVolume;
  final int averageDuration;
  final int currentStreak;
  final int longestStreak;
  
  const WorkoutStatsEntity({
    required this.totalWorkouts,
    required this.totalSets,
    required this.totalVolume,
    required this.averageDuration,
    required this.currentStreak,
    required this.longestStreak,
  });
  
  factory WorkoutStatsEntity.empty() => const WorkoutStatsEntity(
    totalWorkouts: 0,
    totalSets: 0,
    totalVolume: 0,
    averageDuration: 0,
    currentStreak: 0,
    longestStreak: 0,
  );
}

/// Domain entity for daily nutrition
class DailyNutritionEntity {
  final double calories;
  final double protein;
  final double carbs;
  final double fat;
  final double fiber;
  final double water;
  final double calorieGoal;
  final double proteinGoal;
  final double carbGoal;
  final double fatGoal;
  final double waterGoal;
  
  const DailyNutritionEntity({
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fiber,
    required this.water,
    required this.calorieGoal,
    required this.proteinGoal,
    required this.carbGoal,
    required this.fatGoal,
    required this.waterGoal,
  });
  
  double get calorieProgress => calorieGoal > 0 ? calories / calorieGoal : 0;
  double get proteinProgress => proteinGoal > 0 ? protein / proteinGoal : 0;
  double get carbProgress => carbGoal > 0 ? carbs / carbGoal : 0;
  double get fatProgress => fatGoal > 0 ? fat / fatGoal : 0;
  double get waterProgress => waterGoal > 0 ? water / waterGoal : 0;
  
  int get remainingCalories => (calorieGoal - calories).round();
  int get remainingProtein => (proteinGoal - protein).round();
  int get remainingCarbs => (carbGoal - carbs).round();
  int get remainingFat => (fatGoal - fat).round();
  int get remainingWater => (waterGoal - water).round();
}

/// Domain entity for glucose summary
class GlucoseSummaryEntity {
  final DateTime date;
  final double average;
  final double min;
  final double max;
  final double timeInRange;
  final double estimatedA1C;
  final int readingCount;
  final Map<GlucoseClassification, int> classificationCounts;
  
  const GlucoseSummaryEntity({
    required this.date,
    required this.average,
    required this.min,
    required this.max,
    required this.timeInRange,
    required this.estimatedA1C,
    required this.readingCount,
    required this.classificationCounts,
  });
  
  bool get isGoodControl => timeInRange >= 70;
  bool get needsAttention => timeInRange < 50;
}

/// Domain entity for weight progress
class WeightProgressEntity {
  final double currentWeight;
  final double targetWeight;
  final double startWeight;
  final double change;
  final double changePercent;
  final int days;
  final double weeklyChange;
  final double monthlyChange;
  
  const WeightProgressEntity({
    required this.currentWeight,
    required this.targetWeight,
    required this.startWeight,
    required this.change,
    required this.changePercent,
    required this.days,
    required this.weeklyChange,
    required this.monthlyChange,
  });
  
  bool get isOnTrack => changePercent.abs() < 1;
  bool get isLosing => change < 0;
  bool get isGaining => change > 0;
  
  String get statusMessage {
    if (isLosing) {
      return 'Down ${change.abs().toStringAsFixed(1)} kg';
    } else if (isGaining) {
      return 'Up ${change.toStringAsFixed(1)} kg';
    } else {
      return 'No change';
    }
  }
}
