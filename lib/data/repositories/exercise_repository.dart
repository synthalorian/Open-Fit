import 'package:isar/isar.dart';
import '../models/exercise.dart';

/// Repository interface for exercises
abstract class ExerciseRepositoryBase {
  Future<List<Exercise>> getAll();
  Future<List<Exercise>> getByMuscleGroup(MuscleGroup group);
  Future<List<Exercise>> search(String query);
  Future<Exercise?> getByUuid(String uuid);
  Future<void> add(Exercise exercise);
  Future<void> update(Exercise exercise);
  Future<void> delete(int id);
}

/// Isar implementation of ExerciseRepository
class ExerciseRepository implements ExerciseRepositoryBase {
  final Isar _isar;
  
  ExerciseRepository(this._isar);
  
  @override
  Future<List<Exercise>> getAll() async {
    return await _isar.exercises.where().findAll();
  }
  
  @override
  Future<List<Exercise>> getByMuscleGroup(MuscleGroup group) async {
    return await _isar.exercises
        .filter()
        .primaryMuscleGroupEqualTo(group)
        .findAll();
  }
  
  @override
  Future<List<Exercise>> search(String query) async {
    return await _isar.exercises
        .filter()
        .nameContains(query, caseSensitive: false)
        .findAll();
  }
  
  @override
  Future<Exercise?> getByUuid(String uuid) async {
    return await _isar.exercises.filter().uuidEqualTo(uuid).findFirst();
  }
  
  @override
  Future<void> add(Exercise exercise) async {
    exercise.isCustom = true;
    await _isar.writeTxn(() async {
      await _isar.exercises.put(exercise);
    });
  }
  
  @override
  Future<void> update(Exercise exercise) async {
    exercise.updatedAt = DateTime.now();
    await _isar.writeTxn(() async {
      await _isar.exercises.put(exercise);
    });
  }
  
  @override
  Future<void> delete(int id) async {
    await _isar.writeTxn(() async {
      await _isar.exercises.delete(id);
    });
  }
}
