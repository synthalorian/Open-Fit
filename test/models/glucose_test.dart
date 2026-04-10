import 'package:flutter_test/flutter_test.dart';
import 'package:open_fit/data/models/glucose.dart';

void main() {
  group('GlucoseContext enum', () {
    test('has 5 values', () {
      expect(GlucoseContext.values.length, 5);
    });

    test('includes fasting and postMeal', () {
      expect(GlucoseContext.values, contains(GlucoseContext.fasting));
      expect(GlucoseContext.values, contains(GlucoseContext.postMeal));
      expect(GlucoseContext.values, contains(GlucoseContext.bedtime));
    });
  });

  group('GlucoseUnit enum', () {
    test('has 2 values', () {
      expect(GlucoseUnit.values.length, 2);
      expect(GlucoseUnit.values, contains(GlucoseUnit.mgDl));
      expect(GlucoseUnit.values, contains(GlucoseUnit.mmolL));
    });
  });

  group('GlucoseClassification enum', () {
    test('has 5 severity levels', () {
      expect(GlucoseClassification.values.length, 5);
      expect(GlucoseClassification.values, contains(GlucoseClassification.low));
      expect(GlucoseClassification.values, contains(GlucoseClassification.normal));
      expect(GlucoseClassification.values, contains(GlucoseClassification.elevated));
      expect(GlucoseClassification.values, contains(GlucoseClassification.high));
      expect(GlucoseClassification.values, contains(GlucoseClassification.veryHigh));
    });
  });
}
