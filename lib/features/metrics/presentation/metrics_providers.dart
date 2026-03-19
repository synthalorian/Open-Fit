import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../data/models/body_metrics.dart';
import '../../../data/services/service_locator.dart';
import '../../domain/entities/workout_stats.dart';
import '../../domain/repositories/i_repositories.dart';

part 'metrics_providers.g.dart';

/// Provider for metrics repository
@riverpod
IMetricsRepository metricsRepository(MetricsRepositoryRef ref) {
  throw UnimplementedError('Repository not yet implemented');
}

/// Provider for latest measurement
@riverpod
FutureOr<BodyMeasurement?> latestMeasurement(LatestMeasurementRef ref) async {
  final repo = ref.watch(metricsRepositoryProvider);
  return await repo.getLatest();
}

/// Provider for user profile
@riverpod
class UserProfileNotifier extends _$UserProfileNotifier {
  @override
  FutureOr<UserProfile> build() async {
    final repo = ref.watch(metricsRepositoryProvider);
    return await repo.getProfile();
  }
  
  Future<void> updateProfile(UserProfile profile) async {
    final repo = ref.watch(metricsRepositoryProvider);
    await repo.updateProfile(profile);
    state = AsyncData(profile);
  }
}

/// Provider for weight history
@riverpod
FutureOr<List<BodyMeasurement>> weightHistory(WeightHistoryRef ref, int days) async {
  final repo = ref.watch(metricsRepositoryProvider);
  return await repo.getWeightHistory(limit: days);
}

/// Provider for weight stats
@riverpod
FutureOr<WeightStats?> weightStats(
  WeightStatsRef ref,
  DateTime startDate,
  DateTime endDate,
) async {
  final repo = ref.watch(metricsRepositoryProvider);
  return await repo.getWeightStats(startDate, endDate);
}

/// Provider for BMI calculation
@riverpod
FutureOr<double?> bmi(BmiRef ref) async {
  final profile = await ref.watch(userProfileNotifierProvider.future);
  final measurement = await ref.watch(latestMeasurementProvider.future);
  
  if (profile.heightCm == null || measurement?.weightKg == null) return null;
  
  final heightM = profile.heightCm! / 100;
  return measurement!.weightKg! / (heightM * heightM);
}

/// Provider for all measurements
@riverpod
FutureOr<List<BodyMeasurement>> allMeasurements(AllMeasurementsRef ref) async {
  final repo = ref.watch(metricsRepositoryProvider);
  return await repo.getAll();
}

/// Provider for adding measurement
@riverpod
class AddMeasurement extends _$AddMeasurement {
  @override
  void Function(BodyMeasurement) build() {
    return (measurement) async {
      final repo = ref.read(metricsRepositoryProvider);
      await repo.add(measurement);
      
      // Invalidate related providers
      ref.invalidate(latestMeasurementProvider);
      ref.invalidate(allMeasurementsProvider);
      ref.invalidate(weightHistoryProvider);
      ref.invalidate(bmiProvider);
    };
  }
  
  void add(BodyMeasurement measurement) {
    state(measurement);
  }
}
