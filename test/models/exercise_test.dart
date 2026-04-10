import 'package:flutter_test/flutter_test.dart';
import 'package:open_fit/data/models/exercise.dart';

void main() {
  group('MuscleGroup enum', () {
    test('has 16 values', () {
      expect(MuscleGroup.values.length, 16);
    });

    test('includes core muscle groups', () {
      expect(MuscleGroup.values, contains(MuscleGroup.chest));
      expect(MuscleGroup.values, contains(MuscleGroup.back));
      expect(MuscleGroup.values, contains(MuscleGroup.legs));
      expect(MuscleGroup.values, contains(MuscleGroup.abs));
      expect(MuscleGroup.values, contains(MuscleGroup.fullBody));
    });
  });

  group('Equipment enum', () {
    test('has 12 values', () {
      expect(Equipment.values.length, 12);
    });

    test('includes bodyweight (none)', () {
      expect(Equipment.values, contains(Equipment.none));
    });
  });

  group('ExerciseCategory enum', () {
    test('has 6 values', () {
      expect(ExerciseCategory.values.length, 6);
    });

    test('includes strength and cardio', () {
      expect(ExerciseCategory.values, contains(ExerciseCategory.strength));
      expect(ExerciseCategory.values, contains(ExerciseCategory.cardio));
    });
  });
}
