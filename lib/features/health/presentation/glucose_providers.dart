import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/glucose.dart';
import '../../../core/providers/database_providers.dart';

final glucoseDateProvider = StateProvider<DateTime>((ref) => DateTime.now());

final glucoseReadingsProvider = FutureProvider<List<GlucoseReading>>((ref) async {
  final date = ref.watch(glucoseDateProvider);
  final repo = await ref.watch(glucoseRepoProvider.future);
  return repo.getReadingsForDate(date);
});

final recentGlucoseProvider = FutureProvider<List<GlucoseReading>>((ref) async {
  final repo = await ref.watch(glucoseRepoProvider.future);
  return repo.getRecentReadings(20);
});

final glucoseTargetsProvider = FutureProvider<GlucoseTargets>((ref) async {
  final repo = await ref.watch(glucoseRepoProvider.future);
  return repo.getTargets();
});
