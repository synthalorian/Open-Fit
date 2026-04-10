import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/body_metrics.dart';
import '../../../core/providers/database_providers.dart';
import '../../../data/repositories/metrics_repository.dart';

final latestMeasurementProvider = FutureProvider<BodyMeasurement?>((ref) async {
  final repo = await ref.watch(metricsRepoProvider.future);
  return repo.getLatest();
});

final userProfileProvider = FutureProvider<UserProfile?>((ref) async {
  final repo = await ref.watch(metricsRepoProvider.future);
  return repo.getProfile();
});

final weightHistoryProvider = FutureProvider<List<BodyMeasurement>>((ref) async {
  final repo = await ref.watch(metricsRepoProvider.future);
  return repo.getWeightHistory();
});
