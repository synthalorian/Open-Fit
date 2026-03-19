import '../models/body_metrics.dart';

/// Repository interface for body measurements
abstract class MetricsRepositoryBase {
  Future<List<BodyMeasurement>> getAll();
  Future<List<BodyMeasurement>> getInRange(DateTime start, DateTime end);
  Future<BodyMeasurement?> getLatest();
  Future<BodyMeasurement?> getForDate(DateTime date);
  Future<void> add(BodyMeasurement measurement);
  Future<void> update(BodyMeasurement measurement);
  Future<void> delete(int id);
  Future<List<BodyMeasurement>> getWeightHistory({int limit = 30});
  Future<WeightStats?> getWeightStats(DateTime start, DateTime end);
}

/// Isar implementation
class MetricsRepository implements MetricsRepositoryBase {
  final Isar _isar;
  
  MetricsRepository(this._isar);
  
  @override
  Future<List<BodyMeasurement>> getAll() async {
    return await _isar.bodyMeasurements.where().sortByDateDesc().findAll();
  }
  
  @override
  Future<List<BodyMeasurement>> getInRange(DateTime start, DateTime end) async {
    return await _isar.bodyMeasurements
        .filter()
        .dateBetween(start, end)
        .sortByDateDesc()
        .findAll();
  }
  
  @override
  Future<BodyMeasurement?> getLatest() async {
    return await _isar.bodyMeasurements.where().sortByDateDesc().findFirst();
  }
  
  @override
  Future<BodyMeasurement?> getForDate(DateTime date) async {
    final startOfDay = DateTime(date.year, date.month, date.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));
    
    return await _isar.bodyMeasurements
        .filter()
        .dateBetween(startOfDay, endOfDay)
        .findFirst();
  }
  
  @override
  Future<void> add(BodyMeasurement measurement) async {
    await _isar.writeTxn(() async {
      await _isar.bodyMeasurements.put(measurement);
    });
  }
  
  @override
  Future<void> update(BodyMeasurement measurement) async {
    await _isar.writeTxn(() async {
      await _isar.bodyMeasurements.put(measurement);
    });
  }
  
  @override
  Future<void> delete(int id) async {
    await _isar.writeTxn(() async {
      await _isar.bodyMeasurements.delete(id);
    });
  }
  
  @override
  Future<List<BodyMeasurement>> getWeightHistory({int limit = 30}) async {
    return await _isar.bodyMeasurements
        .filter()
        .weightKgIsNotNull()
        .sortByDateDesc()
        .limit(limit)
        .findAll();
  }
  
  @override
  Future<WeightStats?> getWeightStats(DateTime start, DateTime end) async {
    final measurements = await getInRange(start, end);
    final weightsOnly = measurements.where((m) => m.weightKg != null).toList();
    
    if (weightsOnly.isEmpty) return null;
    
    final weights = weightsOnly.map((m) => m.weightKg!).toList();
    weights.sort();
    
    final startWeight = weightsOnly.last.weightKg!;
    final endWeight = weightsOnly.first.weightKg!;
    final minWeight = weights.first;
    final maxWeight = weights.last;
    final averageWeight = weights.reduce((a, b) => a + b) / weights.length;
    final change = endWeight - startWeight;
    final changePercent = startWeight > 0 ? (change / startWeight) * 100 : 0;
    final days = end.difference(start).inDays;
    
    return WeightStats(
      startWeight: startWeight,
      endWeight: endWeight,
      minWeight: minWeight,
      maxWeight: maxWeight,
      averageWeight: averageWeight,
      change: change,
      changePercent: changePercent.toDouble(),
      days: days,
    );
  }
}
