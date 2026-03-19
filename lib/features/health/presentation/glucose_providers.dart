import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/models/glucose.dart';
import '../../../data/services/service_locator.dart';
import '../../domain/entities/workout_stats.dart';
import '../../domain/repositories/i_repositories.dart';

part 'glucose_providers.g.dart';

/// Provider for glucose repository
@riverpod
IGlucoseRepository glucoseRepository(GlucoseRepositoryRef ref) {
  throw UnimplementedError('Repository not yet implemented');
}

/// Provider for selected date
@riverpod
class GlucoseSelectedDate extends _$GlucoseSelectedDate {
  @override
  DateTime build() => DateTime.now();
  
  void selectDate(DateTime date) {
    state = date;
  }
  
  void goToToday() {
    state = DateTime.now();
  }
  
  void previousDay() {
    state = state.subtract(const Duration(days: 1));
  }
  
  void nextDay() {
    final now = DateTime.now();
    if (state.year == now.year && state.month == now.month && state.day == now.day) return;
    state = state.add(const Duration(days: 1));
  }
}

/// Provider for daily glucose summary
@riverpod
FutureOr<GlucoseSummaryEntity> dailyGlucoseSummary(DailyGlucoseSummaryRef ref, DateTime date) async {
  final repo = ref.watch(glucoseRepositoryProvider);
  return await repo.getDailySummary(date);
}

/// Provider for glucose targets
@riverpod
class GlucoseTargetsNotifier extends _$GlucoseTargetsNotifier {
  @override
  FutureOr<GlucoseTargets> build() async {
    final repo = ref.watch(glucoseRepositoryProvider);
    return await repo.getTargets();
  }
  
  Future<void> updateTargets(GlucoseTargets targets) async {
    final repo = ref.watch(glucoseRepositoryProvider);
    await repo.updateTargets(targets);
    state = AsyncData(targets);
  }
}

/// Provider for recent glucose readings
@riverpod
FutureOr<List<GlucoseReading>> recentGlucoseReadings(RecentGlucoseReadingsRef ref, int limit) async {
  final repo = ref.watch(glucoseRepositoryProvider);
  return await repo.getRecentReadings(limit);
}

/// Provider for glucose readings in date range
@riverpod
FutureOr<List<GlucoseReading>> glucoseReadingsInRange(
  GlucoseReadingsInRangeRef ref,
  DateTime startDate,
  DateTime endDate,
) async {
  final repo = ref.watch(glucoseRepositoryProvider);
  return await repo.getRecentReadings(100); // Simplified
}

/// Provider for quick glucose logging
@riverpod
class QuickAddGlucose extends _$QuickAddGlucose {
  @override
  void Function(double, GlucoseContext, String?) build() {
    return (value, context, notes) async {
      final repo = ref.read(glucoseRepositoryProvider);
      await repo.logReading(
        GlucoseReading(
          uuid: const Uuid().v4(),
          timestamp: DateTime.now(),
          valueMgDl: value,
          context: context,
          notes: notes,
        ),
      );
      
      // Invalidate related providers
      ref.invalidate(dailyGlucoseSummaryProvider);
      ref.invalidate(recentGlucoseReadingsProvider);
    };
  }
  
  void logReading(double value, GlucoseContext context, {String? notes}) {
    state(value, context, notes);
  }
}

/// Provider for estimated A1C
@riverpod
FutureOr<double> estimatedA1C(EstimatedA1CRef ref) async {
  final repo = ref.watch(glucoseRepositoryProvider);
  
  // Get average glucose over last 90 days
  final endDate = DateTime.now();
  final startDate = endDate.subtract(const Duration(days: 90));
  
  final avgGlucose = await repo.getAverageGlucose(startDate, endDate);
  
  if (avgGlucose == 0) return 0;
  
  // Formula: A1C = (average glucose + 46.7) / 28.7
  return (avgGlucose + 46.7) / 28.7;
}
