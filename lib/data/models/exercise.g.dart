// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetExerciseCollection on Isar {
  IsarCollection<Exercise> get exercises => this.collection();
}

const ExerciseSchema = CollectionSchema(
  name: r'Exercise',
  id: 2972066467915231902,
  properties: {
    r'alternativeNames': PropertySchema(
      id: 0,
      name: r'alternativeNames',
      type: IsarType.stringList,
    ),
    r'category': PropertySchema(
      id: 1,
      name: r'category',
      type: IsarType.string,
      enumMap: _ExercisecategoryEnumValueMap,
    ),
    r'commonMistakes': PropertySchema(
      id: 2,
      name: r'commonMistakes',
      type: IsarType.stringList,
    ),
    r'createdAt': PropertySchema(
      id: 3,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'displayName': PropertySchema(
      id: 4,
      name: r'displayName',
      type: IsarType.string,
    ),
    r'equipment': PropertySchema(
      id: 5,
      name: r'equipment',
      type: IsarType.string,
      enumMap: _ExerciseequipmentEnumValueMap,
    ),
    r'instructions': PropertySchema(
      id: 6,
      name: r'instructions',
      type: IsarType.stringList,
    ),
    r'isCustom': PropertySchema(
      id: 7,
      name: r'isCustom',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 8,
      name: r'name',
      type: IsarType.string,
    ),
    r'primaryMuscleGroup': PropertySchema(
      id: 9,
      name: r'primaryMuscleGroup',
      type: IsarType.string,
      enumMap: _ExerciseprimaryMuscleGroupEnumValueMap,
    ),
    r'secondaryMuscleGroups': PropertySchema(
      id: 10,
      name: r'secondaryMuscleGroups',
      type: IsarType.byteList,
      enumMap: _ExercisesecondaryMuscleGroupsEnumValueMap,
    ),
    r'tips': PropertySchema(
      id: 11,
      name: r'tips',
      type: IsarType.stringList,
    ),
    r'updatedAt': PropertySchema(
      id: 12,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'uuid': PropertySchema(
      id: 13,
      name: r'uuid',
      type: IsarType.string,
    ),
    r'videoUrl': PropertySchema(
      id: 14,
      name: r'videoUrl',
      type: IsarType.string,
    )
  },
  estimateSize: _exerciseEstimateSize,
  serialize: _exerciseSerialize,
  deserialize: _exerciseDeserialize,
  deserializeProp: _exerciseDeserializeProp,
  idName: r'id',
  indexes: {
    r'uuid': IndexSchema(
      id: 2134397340427724972,
      name: r'uuid',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'uuid',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _exerciseGetId,
  getLinks: _exerciseGetLinks,
  attach: _exerciseAttach,
  version: '3.1.0+1',
);

int _exerciseEstimateSize(
  Exercise object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.alternativeNames.length * 3;
  {
    for (var i = 0; i < object.alternativeNames.length; i++) {
      final value = object.alternativeNames[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.category.name.length * 3;
  bytesCount += 3 + object.commonMistakes.length * 3;
  {
    for (var i = 0; i < object.commonMistakes.length; i++) {
      final value = object.commonMistakes[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.displayName.length * 3;
  bytesCount += 3 + object.equipment.name.length * 3;
  bytesCount += 3 + object.instructions.length * 3;
  {
    for (var i = 0; i < object.instructions.length; i++) {
      final value = object.instructions[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.primaryMuscleGroup.name.length * 3;
  bytesCount += 3 + object.secondaryMuscleGroups.length;
  bytesCount += 3 + object.tips.length * 3;
  {
    for (var i = 0; i < object.tips.length; i++) {
      final value = object.tips[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.uuid.length * 3;
  {
    final value = object.videoUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _exerciseSerialize(
  Exercise object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.alternativeNames);
  writer.writeString(offsets[1], object.category.name);
  writer.writeStringList(offsets[2], object.commonMistakes);
  writer.writeDateTime(offsets[3], object.createdAt);
  writer.writeString(offsets[4], object.displayName);
  writer.writeString(offsets[5], object.equipment.name);
  writer.writeStringList(offsets[6], object.instructions);
  writer.writeBool(offsets[7], object.isCustom);
  writer.writeString(offsets[8], object.name);
  writer.writeString(offsets[9], object.primaryMuscleGroup.name);
  writer.writeByteList(
      offsets[10], object.secondaryMuscleGroups.map((e) => e.index).toList());
  writer.writeStringList(offsets[11], object.tips);
  writer.writeDateTime(offsets[12], object.updatedAt);
  writer.writeString(offsets[13], object.uuid);
  writer.writeString(offsets[14], object.videoUrl);
}

Exercise _exerciseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Exercise(
    category:
        _ExercisecategoryValueEnumMap[reader.readStringOrNull(offsets[1])] ??
            ExerciseCategory.strength,
    commonMistakes: reader.readStringList(offsets[2]) ?? const [],
    equipment:
        _ExerciseequipmentValueEnumMap[reader.readStringOrNull(offsets[5])] ??
            Equipment.none,
    instructions: reader.readStringList(offsets[6]) ?? const [],
    name: reader.readString(offsets[8]),
    primaryMuscleGroup: _ExerciseprimaryMuscleGroupValueEnumMap[
            reader.readStringOrNull(offsets[9])] ??
        MuscleGroup.chest,
    tips: reader.readStringList(offsets[11]) ?? const [],
    uuid: reader.readString(offsets[13]),
  );
  object.alternativeNames = reader.readStringList(offsets[0]) ?? [];
  object.createdAt = reader.readDateTime(offsets[3]);
  object.id = id;
  object.isCustom = reader.readBool(offsets[7]);
  object.secondaryMuscleGroups = reader
          .readByteList(offsets[10])
          ?.map((e) =>
              _ExercisesecondaryMuscleGroupsValueEnumMap[e] ??
              MuscleGroup.chest)
          .toList() ??
      [];
  object.updatedAt = reader.readDateTime(offsets[12]);
  object.videoUrl = reader.readStringOrNull(offsets[14]);
  return object;
}

P _exerciseDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset) ?? []) as P;
    case 1:
      return (_ExercisecategoryValueEnumMap[reader.readStringOrNull(offset)] ??
          ExerciseCategory.strength) as P;
    case 2:
      return (reader.readStringList(offset) ?? const []) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (_ExerciseequipmentValueEnumMap[reader.readStringOrNull(offset)] ??
          Equipment.none) as P;
    case 6:
      return (reader.readStringList(offset) ?? const []) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (_ExerciseprimaryMuscleGroupValueEnumMap[
              reader.readStringOrNull(offset)] ??
          MuscleGroup.chest) as P;
    case 10:
      return (reader
              .readByteList(offset)
              ?.map((e) =>
                  _ExercisesecondaryMuscleGroupsValueEnumMap[e] ??
                  MuscleGroup.chest)
              .toList() ??
          []) as P;
    case 11:
      return (reader.readStringList(offset) ?? const []) as P;
    case 12:
      return (reader.readDateTime(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ExercisecategoryEnumValueMap = {
  r'strength': r'strength',
  r'cardio': r'cardio',
  r'flexibility': r'flexibility',
  r'plyometric': r'plyometric',
  r'olympic': r'olympic',
  r'strongman': r'strongman',
};
const _ExercisecategoryValueEnumMap = {
  r'strength': ExerciseCategory.strength,
  r'cardio': ExerciseCategory.cardio,
  r'flexibility': ExerciseCategory.flexibility,
  r'plyometric': ExerciseCategory.plyometric,
  r'olympic': ExerciseCategory.olympic,
  r'strongman': ExerciseCategory.strongman,
};
const _ExerciseequipmentEnumValueMap = {
  r'none': r'none',
  r'dumbbell': r'dumbbell',
  r'barbell': r'barbell',
  r'kettlebell': r'kettlebell',
  r'machine': r'machine',
  r'cable': r'cable',
  r'resistanceBand': r'resistanceBand',
  r'smithMachine': r'smithMachine',
  r'ezBar': r'ezBar',
  r'pullUpBar': r'pullUpBar',
  r'bench': r'bench',
  r'other': r'other',
};
const _ExerciseequipmentValueEnumMap = {
  r'none': Equipment.none,
  r'dumbbell': Equipment.dumbbell,
  r'barbell': Equipment.barbell,
  r'kettlebell': Equipment.kettlebell,
  r'machine': Equipment.machine,
  r'cable': Equipment.cable,
  r'resistanceBand': Equipment.resistanceBand,
  r'smithMachine': Equipment.smithMachine,
  r'ezBar': Equipment.ezBar,
  r'pullUpBar': Equipment.pullUpBar,
  r'bench': Equipment.bench,
  r'other': Equipment.other,
};
const _ExerciseprimaryMuscleGroupEnumValueMap = {
  r'chest': r'chest',
  r'back': r'back',
  r'shoulders': r'shoulders',
  r'biceps': r'biceps',
  r'triceps': r'triceps',
  r'legs': r'legs',
  r'quads': r'quads',
  r'hamstrings': r'hamstrings',
  r'calves': r'calves',
  r'abs': r'abs',
  r'core': r'core',
  r'glutes': r'glutes',
  r'forearms': r'forearms',
  r'traps': r'traps',
  r'lats': r'lats',
  r'fullBody': r'fullBody',
};
const _ExerciseprimaryMuscleGroupValueEnumMap = {
  r'chest': MuscleGroup.chest,
  r'back': MuscleGroup.back,
  r'shoulders': MuscleGroup.shoulders,
  r'biceps': MuscleGroup.biceps,
  r'triceps': MuscleGroup.triceps,
  r'legs': MuscleGroup.legs,
  r'quads': MuscleGroup.quads,
  r'hamstrings': MuscleGroup.hamstrings,
  r'calves': MuscleGroup.calves,
  r'abs': MuscleGroup.abs,
  r'core': MuscleGroup.core,
  r'glutes': MuscleGroup.glutes,
  r'forearms': MuscleGroup.forearms,
  r'traps': MuscleGroup.traps,
  r'lats': MuscleGroup.lats,
  r'fullBody': MuscleGroup.fullBody,
};
const _ExercisesecondaryMuscleGroupsEnumValueMap = {
  'chest': 0,
  'back': 1,
  'shoulders': 2,
  'biceps': 3,
  'triceps': 4,
  'legs': 5,
  'quads': 6,
  'hamstrings': 7,
  'calves': 8,
  'abs': 9,
  'core': 10,
  'glutes': 11,
  'forearms': 12,
  'traps': 13,
  'lats': 14,
  'fullBody': 15,
};
const _ExercisesecondaryMuscleGroupsValueEnumMap = {
  0: MuscleGroup.chest,
  1: MuscleGroup.back,
  2: MuscleGroup.shoulders,
  3: MuscleGroup.biceps,
  4: MuscleGroup.triceps,
  5: MuscleGroup.legs,
  6: MuscleGroup.quads,
  7: MuscleGroup.hamstrings,
  8: MuscleGroup.calves,
  9: MuscleGroup.abs,
  10: MuscleGroup.core,
  11: MuscleGroup.glutes,
  12: MuscleGroup.forearms,
  13: MuscleGroup.traps,
  14: MuscleGroup.lats,
  15: MuscleGroup.fullBody,
};

Id _exerciseGetId(Exercise object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _exerciseGetLinks(Exercise object) {
  return [];
}

void _exerciseAttach(IsarCollection<dynamic> col, Id id, Exercise object) {
  object.id = id;
}

extension ExerciseByIndex on IsarCollection<Exercise> {
  Future<Exercise?> getByUuid(String uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  Exercise? getByUuidSync(String uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<Exercise?>> getAllByUuid(List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<Exercise?> getAllByUuidSync(List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'uuid', values);
  }

  Future<int> deleteAllByUuid(List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'uuid', values);
  }

  int deleteAllByUuidSync(List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'uuid', values);
  }

  Future<Id> putByUuid(Exercise object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(Exercise object, {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<Exercise> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(List<Exercise> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }
}

extension ExerciseQueryWhereSort on QueryBuilder<Exercise, Exercise, QWhere> {
  QueryBuilder<Exercise, Exercise, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ExerciseQueryWhere on QueryBuilder<Exercise, Exercise, QWhereClause> {
  QueryBuilder<Exercise, Exercise, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterWhereClause> uuidEqualTo(String uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [uuid],
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterWhereClause> uuidNotEqualTo(
      String uuid) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'uuid',
              lower: [],
              upper: [uuid],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'uuid',
              lower: [uuid],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'uuid',
              lower: [uuid],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'uuid',
              lower: [],
              upper: [uuid],
              includeUpper: false,
            ));
      }
    });
  }
}

extension ExerciseQueryFilter
    on QueryBuilder<Exercise, Exercise, QFilterCondition> {
  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      alternativeNamesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alternativeNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      alternativeNamesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'alternativeNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      alternativeNamesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'alternativeNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      alternativeNamesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'alternativeNames',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      alternativeNamesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'alternativeNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      alternativeNamesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'alternativeNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      alternativeNamesElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'alternativeNames',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      alternativeNamesElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'alternativeNames',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      alternativeNamesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'alternativeNames',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      alternativeNamesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'alternativeNames',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      alternativeNamesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alternativeNames',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      alternativeNamesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alternativeNames',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      alternativeNamesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alternativeNames',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      alternativeNamesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alternativeNames',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      alternativeNamesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alternativeNames',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      alternativeNamesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'alternativeNames',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> categoryEqualTo(
    ExerciseCategory value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> categoryGreaterThan(
    ExerciseCategory value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> categoryLessThan(
    ExerciseCategory value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> categoryBetween(
    ExerciseCategory lower,
    ExerciseCategory upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'category',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> categoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> categoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> categoryContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> categoryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'category',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      commonMistakesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commonMistakes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      commonMistakesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'commonMistakes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      commonMistakesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'commonMistakes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      commonMistakesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'commonMistakes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      commonMistakesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'commonMistakes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      commonMistakesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'commonMistakes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      commonMistakesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'commonMistakes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      commonMistakesElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'commonMistakes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      commonMistakesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commonMistakes',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      commonMistakesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'commonMistakes',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      commonMistakesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'commonMistakes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      commonMistakesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'commonMistakes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      commonMistakesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'commonMistakes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      commonMistakesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'commonMistakes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      commonMistakesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'commonMistakes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      commonMistakesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'commonMistakes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> displayNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      displayNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> displayNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> displayNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'displayName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> displayNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> displayNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> displayNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'displayName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> displayNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'displayName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> displayNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'displayName',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      displayNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'displayName',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> equipmentEqualTo(
    Equipment value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'equipment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> equipmentGreaterThan(
    Equipment value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'equipment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> equipmentLessThan(
    Equipment value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'equipment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> equipmentBetween(
    Equipment lower,
    Equipment upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'equipment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> equipmentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'equipment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> equipmentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'equipment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> equipmentContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'equipment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> equipmentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'equipment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> equipmentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'equipment',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      equipmentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'equipment',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      instructionsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'instructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      instructionsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'instructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      instructionsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'instructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      instructionsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'instructions',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      instructionsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'instructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      instructionsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'instructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      instructionsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'instructions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      instructionsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'instructions',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      instructionsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'instructions',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      instructionsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'instructions',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      instructionsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'instructions',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      instructionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'instructions',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      instructionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'instructions',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      instructionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'instructions',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      instructionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'instructions',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      instructionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'instructions',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> isCustomEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isCustom',
        value: value,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      primaryMuscleGroupEqualTo(
    MuscleGroup value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryMuscleGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      primaryMuscleGroupGreaterThan(
    MuscleGroup value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'primaryMuscleGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      primaryMuscleGroupLessThan(
    MuscleGroup value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'primaryMuscleGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      primaryMuscleGroupBetween(
    MuscleGroup lower,
    MuscleGroup upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'primaryMuscleGroup',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      primaryMuscleGroupStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'primaryMuscleGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      primaryMuscleGroupEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'primaryMuscleGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      primaryMuscleGroupContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'primaryMuscleGroup',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      primaryMuscleGroupMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'primaryMuscleGroup',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      primaryMuscleGroupIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'primaryMuscleGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      primaryMuscleGroupIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'primaryMuscleGroup',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      secondaryMuscleGroupsElementEqualTo(MuscleGroup value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondaryMuscleGroups',
        value: value,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      secondaryMuscleGroupsElementGreaterThan(
    MuscleGroup value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'secondaryMuscleGroups',
        value: value,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      secondaryMuscleGroupsElementLessThan(
    MuscleGroup value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'secondaryMuscleGroups',
        value: value,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      secondaryMuscleGroupsElementBetween(
    MuscleGroup lower,
    MuscleGroup upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'secondaryMuscleGroups',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      secondaryMuscleGroupsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'secondaryMuscleGroups',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      secondaryMuscleGroupsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'secondaryMuscleGroups',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      secondaryMuscleGroupsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'secondaryMuscleGroups',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      secondaryMuscleGroupsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'secondaryMuscleGroups',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      secondaryMuscleGroupsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'secondaryMuscleGroups',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      secondaryMuscleGroupsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'secondaryMuscleGroups',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> tipsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tips',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      tipsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tips',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> tipsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tips',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> tipsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tips',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> tipsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tips',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> tipsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tips',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> tipsElementContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tips',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> tipsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tips',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> tipsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tips',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition>
      tipsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tips',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> tipsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tips',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> tipsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tips',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> tipsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tips',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> tipsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tips',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> tipsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tips',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> tipsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tips',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> updatedAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> uuidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> uuidGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> uuidLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> uuidBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uuid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> uuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> uuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> uuidContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> uuidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> videoUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'videoUrl',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> videoUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'videoUrl',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> videoUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'videoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> videoUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'videoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> videoUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'videoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> videoUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'videoUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> videoUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'videoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> videoUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'videoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> videoUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'videoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> videoUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'videoUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> videoUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'videoUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterFilterCondition> videoUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'videoUrl',
        value: '',
      ));
    });
  }
}

extension ExerciseQueryObject
    on QueryBuilder<Exercise, Exercise, QFilterCondition> {}

extension ExerciseQueryLinks
    on QueryBuilder<Exercise, Exercise, QFilterCondition> {}

extension ExerciseQuerySortBy on QueryBuilder<Exercise, Exercise, QSortBy> {
  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByDisplayName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayName', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByDisplayNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayName', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByEquipment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'equipment', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByEquipmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'equipment', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByIsCustom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCustom', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByIsCustomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCustom', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByPrimaryMuscleGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryMuscleGroup', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy>
      sortByPrimaryMuscleGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryMuscleGroup', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByVideoUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoUrl', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> sortByVideoUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoUrl', Sort.desc);
    });
  }
}

extension ExerciseQuerySortThenBy
    on QueryBuilder<Exercise, Exercise, QSortThenBy> {
  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByDisplayName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayName', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByDisplayNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayName', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByEquipment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'equipment', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByEquipmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'equipment', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByIsCustom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCustom', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByIsCustomDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isCustom', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByPrimaryMuscleGroup() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryMuscleGroup', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy>
      thenByPrimaryMuscleGroupDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'primaryMuscleGroup', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByVideoUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoUrl', Sort.asc);
    });
  }

  QueryBuilder<Exercise, Exercise, QAfterSortBy> thenByVideoUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'videoUrl', Sort.desc);
    });
  }
}

extension ExerciseQueryWhereDistinct
    on QueryBuilder<Exercise, Exercise, QDistinct> {
  QueryBuilder<Exercise, Exercise, QDistinct> distinctByAlternativeNames() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'alternativeNames');
    });
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctByCategory(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctByCommonMistakes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'commonMistakes');
    });
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctByDisplayName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'displayName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctByEquipment(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'equipment', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctByInstructions() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'instructions');
    });
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctByIsCustom() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isCustom');
    });
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctByPrimaryMuscleGroup(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'primaryMuscleGroup',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Exercise, Exercise, QDistinct>
      distinctBySecondaryMuscleGroups() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'secondaryMuscleGroups');
    });
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctByTips() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tips');
    });
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctByUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Exercise, Exercise, QDistinct> distinctByVideoUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'videoUrl', caseSensitive: caseSensitive);
    });
  }
}

extension ExerciseQueryProperty
    on QueryBuilder<Exercise, Exercise, QQueryProperty> {
  QueryBuilder<Exercise, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Exercise, List<String>, QQueryOperations>
      alternativeNamesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'alternativeNames');
    });
  }

  QueryBuilder<Exercise, ExerciseCategory, QQueryOperations>
      categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<Exercise, List<String>, QQueryOperations>
      commonMistakesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'commonMistakes');
    });
  }

  QueryBuilder<Exercise, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Exercise, String, QQueryOperations> displayNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'displayName');
    });
  }

  QueryBuilder<Exercise, Equipment, QQueryOperations> equipmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'equipment');
    });
  }

  QueryBuilder<Exercise, List<String>, QQueryOperations>
      instructionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'instructions');
    });
  }

  QueryBuilder<Exercise, bool, QQueryOperations> isCustomProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isCustom');
    });
  }

  QueryBuilder<Exercise, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Exercise, MuscleGroup, QQueryOperations>
      primaryMuscleGroupProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'primaryMuscleGroup');
    });
  }

  QueryBuilder<Exercise, List<MuscleGroup>, QQueryOperations>
      secondaryMuscleGroupsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'secondaryMuscleGroups');
    });
  }

  QueryBuilder<Exercise, List<String>, QQueryOperations> tipsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tips');
    });
  }

  QueryBuilder<Exercise, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<Exercise, String, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }

  QueryBuilder<Exercise, String?, QQueryOperations> videoUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'videoUrl');
    });
  }
}
