import 'package:isar/isar.dart';
import '../models/glucose.dart';

/// Repository interface for glucose readings
abstract class GlucoseRepositoryBase {
  Future<List<GlucoseReading>> getReadingsForDate(DateTime date);
  Future<List<GlucoseReading>> getReadingsInRange(DateTime start, DateTime end);
  Future<DailyGlucoseSummary> getDailySummary(DateTime date);
  Future<void> addReading(GlucoseReading reading);
  Future<void> deleteReading(int id);
  Future<List<GlucoseReading>> getRecentReadings(int limit);
  Future<double> getAverageGlucose(DateTime start, DateTime end);
  Future<GlucoseTargets> getTargets();
  Future<void> updateTargets(GlucoseTargets targets);
}

/// Isar implementation
class GlucoseRepository implements GlucoseRepositoryBase {
  final Isar _isar;
  
  GlucoseRepository(this._isar);
  
  @override
  Future<List<GlucoseReading>> getReadingsForDate(DateTime date) async {
    final startOfDay = DateTime(date.year, date.month, date.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));
    
    return await _isar.glucoseReadings
        .filter()
        .timestampBetween(startOfDay, endOfDay)
        .sortByTimestampDesc()
        .findAll();
  }
  
  @override
  Future<List<GlucoseReading>> getReadingsInRange(DateTime start, DateTime end) async {
    return await _isar.glucoseReadings
        .filter()
        .timestampBetween(start, end)
        .sortByTimestampDesc()
        .findAll();
  }
  
  @override
  Future<DailyGlucoseSummary> getDailySummary(DateTime date) async {
    final readings = await getReadingsForDate(date);
    return DailyGlucoseSummary(
      date: DateTime(date.year, date.month, date.day),
      readings: readings,
    );
  }
  
  @override
  Future<void> addReading(GlucoseReading reading) async {
    await _isar.writeTxn(() async {
      await _isar.glucoseReadings.put(reading);
    });
  }
  
  @override
  Future<void> deleteReading(int id) async {
    await _isar.writeTxn(() async {
      await _isar.glucoseReadings.delete(id);
    });
  }
  
  @override
  Future<List<GlucoseReading>> getRecentReadings(int limit) async {
    return await _isar.glucoseReadings
        .where()
        .sortByTimestampDesc()
        .limit(limit)
        .findAll();
  }
  
  @override
  Future<double> getAverageGlucose(DateTime start, DateTime end) async {
    final readings = await getReadingsInRange(start, end);
    if (readings.isEmpty) return 0;
    return readings.fold<double>(0, (sum, r) => sum + r.valueMgDl) / readings.length;
  }
  
  @override
  Future<GlucoseTargets> getTargets() async {
    final targets = await _isar.glucoseTargets.where().findFirst();
    return targets ?? GlucoseTargets();
  }
  
  @override
  Future<void> updateTargets(GlucoseTargets targets) async {
    await _isar.writeTxn(() async {
      await _isar.glucoseTargets.put(targets);
    });
  }
}
