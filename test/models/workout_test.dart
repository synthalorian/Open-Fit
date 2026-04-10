import 'package:flutter_test/flutter_test.dart';
import 'package:open_fit/data/models/workout_log.dart';

void main() {
  group('WorkoutSet', () {
    test('defaults are correct', () {
      final set = WorkoutSet();
      expect(set.setNumber, 1);
      expect(set.weight, isNull);
      expect(set.reps, isNull);
      expect(set.toFailure, false);
      expect(set.isWarmup, false);
      expect(set.isDropSet, false);
      expect(set.isComplete, false);
    });

    test('fields can be set', () {
      final set = WorkoutSet()
        ..setNumber = 3
        ..weight = 135.0
        ..reps = 8
        ..rpe = 8
        ..toFailure = true
        ..isComplete = true;

      expect(set.setNumber, 3);
      expect(set.weight, 135.0);
      expect(set.reps, 8);
      expect(set.rpe, 8);
      expect(set.toFailure, true);
      expect(set.isComplete, true);
    });
  });

  group('LoggedExercise', () {
    test('defaults are correct', () {
      final logged = LoggedExercise();
      expect(logged.exerciseUuid, '');
      expect(logged.exerciseName, '');
      expect(logged.sets, isEmpty);
    });
  });
}
