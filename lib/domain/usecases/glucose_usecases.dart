import '../entities/workout_stats.dart';
import '../../repositories/i_repositories.dart';

/// Use case: Log glucose reading
class LogGlucoseReadingUseCase {
  final IGlucoseRepository _repository;
  
  LogGlucoseReadingUseCase(this._repository);
  
  Future<GlucoseReading> call(
    double value,
    GlucoseContext context, {
    String? notes,
    GlucoseUnit unit = GlucoseUnit.mgDl,
  }) async {
    // Convert to mg/dL if needed
    final valueMgDl = unit == GlucoseUnit.mmolL ? value * 18.0 : value;
    
    final reading = GlucoseReading(
      uuid: const Uuid().v4(),
      timestamp: DateTime.now(),
      valueMgDl: valueMgDl,
      context: context,
      notes: notes,
    );
    
    await _repository.logReading(reading);
    return reading;
  }
}

/// Use case: Get glucose summary for a date
class GetGlucoseSummaryUseCase {
  final IGlucoseRepository _repository;
  
  GetGlucoseSummaryUseCase(this._repository);
  
  Future<GlucoseSummaryEntity> call(DateTime date) async {
    return await _repository.getDailySummary(date);
  }
}

/// Use case: Check if glucose is in range
class CheckGlucoseInRangeUseCase {
  final IGlucoseRepository _repository;
  
  CheckGlucoseInRangeUseCase(this._repository);
  
  Future<bool> call(double valueMgDl, GlucoseContext context) async {
    final targets = await _repository.getTargets();
    final (low, high) = targets.getRangeForContext(context);
    
    return valueMgDl >= low && valueMgDl <= high;
  }
}

/// Use case: Calculate estimated A1C
class CalculateEstimatedA1CUseCase {
  final IGlucoseRepository _repository;
  
  CalculateEstimatedA1CUseCase(this._repository);
  
  Future<double> call({int days = 90}) async {
    final endDate = DateTime.now();
    final startDate = endDate.subtract(Duration(days: days));
    
    final avgGlucose = await _repository.getAverageGlucose(startDate, endDate);
    
    if (avgGlucose == 0) return 0;
    
    // Formula: A1C = (average glucose + 46.7) / 28.7
    return (avgGlucose + 46.7) / 28.7;
  }
}

/// Use case: Get glucose trend (last N readings)
class GetGlucoseTrendUseCase {
  final IGlucoseRepository _repository;
  
  GetGlucoseTrendUseCase(this._repository);
  
  Future<GlucoseTrend> call(int readingsCount) async {
    final readings = await _repository.getRecentReadings(readingsCount);
    
    if (readings.isEmpty) {
      return GlucoseTrend.noData;
    }
    
    if (readings.length < 3) {
      return GlucoseTrend.insufficientData;
    }
    
    // Calculate trend using simple linear regression
    final n = readings.length;
    double sumX = 0;
    double sumY = 0;
    double sumXY = 0;
    double sumX2 = 0;
    
    for (int i = 0; i < n; i++) {
      final x = i.toDouble();
      final y = readings[n - 1 - i].valueMgDl; // Reverse for chronological order
      
      sumX += x;
      sumY += y;
      sumXY += x * y;
      sumX2 += x * x;
    }
    
    final slope = (n * sumXY - sumX * sumY) / (n * sumX2 - sumX * sumX);
    
    if (slope > 2) return GlucoseTrend.rising;
    if (slope < -2) return GlucoseTrend.falling;
    return GlucoseTrend.stable;
  }
}

enum GlucoseTrend {
  noData,
  insufficientData,
  rising,
  falling,
  stable,
}
