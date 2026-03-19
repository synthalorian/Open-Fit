// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_metrics.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBodyMeasurementCollection on Isar {
  IsarCollection<BodyMeasurement> get bodyMeasurements => this.collection();
}

const BodyMeasurementSchema = CollectionSchema(
  name: r'BodyMeasurement',
  id: -9058319788105540477,
  properties: {
    r'bodyFatPercent': PropertySchema(
      id: 0,
      name: r'bodyFatPercent',
      type: IsarType.double,
    ),
    r'chestCm': PropertySchema(
      id: 1,
      name: r'chestCm',
      type: IsarType.double,
    ),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'date': PropertySchema(
      id: 3,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'fatMass': PropertySchema(
      id: 4,
      name: r'fatMass',
      type: IsarType.double,
    ),
    r'hipsCm': PropertySchema(
      id: 5,
      name: r'hipsCm',
      type: IsarType.double,
    ),
    r'leanBodyMass': PropertySchema(
      id: 6,
      name: r'leanBodyMass',
      type: IsarType.double,
    ),
    r'leftArmCm': PropertySchema(
      id: 7,
      name: r'leftArmCm',
      type: IsarType.double,
    ),
    r'leftCalfCm': PropertySchema(
      id: 8,
      name: r'leftCalfCm',
      type: IsarType.double,
    ),
    r'leftThighCm': PropertySchema(
      id: 9,
      name: r'leftThighCm',
      type: IsarType.double,
    ),
    r'neckCm': PropertySchema(
      id: 10,
      name: r'neckCm',
      type: IsarType.double,
    ),
    r'notes': PropertySchema(
      id: 11,
      name: r'notes',
      type: IsarType.string,
    ),
    r'photoPath': PropertySchema(
      id: 12,
      name: r'photoPath',
      type: IsarType.string,
    ),
    r'rightArmCm': PropertySchema(
      id: 13,
      name: r'rightArmCm',
      type: IsarType.double,
    ),
    r'rightCalfCm': PropertySchema(
      id: 14,
      name: r'rightCalfCm',
      type: IsarType.double,
    ),
    r'rightThighCm': PropertySchema(
      id: 15,
      name: r'rightThighCm',
      type: IsarType.double,
    ),
    r'shouldersCm': PropertySchema(
      id: 16,
      name: r'shouldersCm',
      type: IsarType.double,
    ),
    r'uuid': PropertySchema(
      id: 17,
      name: r'uuid',
      type: IsarType.string,
    ),
    r'waistCm': PropertySchema(
      id: 18,
      name: r'waistCm',
      type: IsarType.double,
    ),
    r'weightKg': PropertySchema(
      id: 19,
      name: r'weightKg',
      type: IsarType.double,
    )
  },
  estimateSize: _bodyMeasurementEstimateSize,
  serialize: _bodyMeasurementSerialize,
  deserialize: _bodyMeasurementDeserialize,
  deserializeProp: _bodyMeasurementDeserializeProp,
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
  getId: _bodyMeasurementGetId,
  getLinks: _bodyMeasurementGetLinks,
  attach: _bodyMeasurementAttach,
  version: '3.1.0+1',
);

int _bodyMeasurementEstimateSize(
  BodyMeasurement object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.notes;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.photoPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.uuid.length * 3;
  return bytesCount;
}

void _bodyMeasurementSerialize(
  BodyMeasurement object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.bodyFatPercent);
  writer.writeDouble(offsets[1], object.chestCm);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeDateTime(offsets[3], object.date);
  writer.writeDouble(offsets[4], object.fatMass);
  writer.writeDouble(offsets[5], object.hipsCm);
  writer.writeDouble(offsets[6], object.leanBodyMass);
  writer.writeDouble(offsets[7], object.leftArmCm);
  writer.writeDouble(offsets[8], object.leftCalfCm);
  writer.writeDouble(offsets[9], object.leftThighCm);
  writer.writeDouble(offsets[10], object.neckCm);
  writer.writeString(offsets[11], object.notes);
  writer.writeString(offsets[12], object.photoPath);
  writer.writeDouble(offsets[13], object.rightArmCm);
  writer.writeDouble(offsets[14], object.rightCalfCm);
  writer.writeDouble(offsets[15], object.rightThighCm);
  writer.writeDouble(offsets[16], object.shouldersCm);
  writer.writeString(offsets[17], object.uuid);
  writer.writeDouble(offsets[18], object.waistCm);
  writer.writeDouble(offsets[19], object.weightKg);
}

BodyMeasurement _bodyMeasurementDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BodyMeasurement(
    bodyFatPercent: reader.readDoubleOrNull(offsets[0]),
    chestCm: reader.readDoubleOrNull(offsets[1]),
    date: reader.readDateTime(offsets[3]),
    hipsCm: reader.readDoubleOrNull(offsets[5]),
    leftArmCm: reader.readDoubleOrNull(offsets[7]),
    leftCalfCm: reader.readDoubleOrNull(offsets[8]),
    leftThighCm: reader.readDoubleOrNull(offsets[9]),
    neckCm: reader.readDoubleOrNull(offsets[10]),
    notes: reader.readStringOrNull(offsets[11]),
    photoPath: reader.readStringOrNull(offsets[12]),
    rightArmCm: reader.readDoubleOrNull(offsets[13]),
    rightCalfCm: reader.readDoubleOrNull(offsets[14]),
    rightThighCm: reader.readDoubleOrNull(offsets[15]),
    shouldersCm: reader.readDoubleOrNull(offsets[16]),
    uuid: reader.readString(offsets[17]),
    waistCm: reader.readDoubleOrNull(offsets[18]),
    weightKg: reader.readDoubleOrNull(offsets[19]),
  );
  object.createdAt = reader.readDateTime(offsets[2]);
  object.id = id;
  return object;
}

P _bodyMeasurementDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readDoubleOrNull(offset)) as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (reader.readDoubleOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readDoubleOrNull(offset)) as P;
    case 14:
      return (reader.readDoubleOrNull(offset)) as P;
    case 15:
      return (reader.readDoubleOrNull(offset)) as P;
    case 16:
      return (reader.readDoubleOrNull(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readDoubleOrNull(offset)) as P;
    case 19:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _bodyMeasurementGetId(BodyMeasurement object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _bodyMeasurementGetLinks(BodyMeasurement object) {
  return [];
}

void _bodyMeasurementAttach(
    IsarCollection<dynamic> col, Id id, BodyMeasurement object) {
  object.id = id;
}

extension BodyMeasurementByIndex on IsarCollection<BodyMeasurement> {
  Future<BodyMeasurement?> getByUuid(String uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  BodyMeasurement? getByUuidSync(String uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<BodyMeasurement?>> getAllByUuid(List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<BodyMeasurement?> getAllByUuidSync(List<String> uuidValues) {
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

  Future<Id> putByUuid(BodyMeasurement object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(BodyMeasurement object, {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<BodyMeasurement> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(List<BodyMeasurement> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }
}

extension BodyMeasurementQueryWhereSort
    on QueryBuilder<BodyMeasurement, BodyMeasurement, QWhere> {
  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BodyMeasurementQueryWhere
    on QueryBuilder<BodyMeasurement, BodyMeasurement, QWhereClause> {
  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterWhereClause> idBetween(
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

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterWhereClause> uuidEqualTo(
      String uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [uuid],
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterWhereClause>
      uuidNotEqualTo(String uuid) {
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

extension BodyMeasurementQueryFilter
    on QueryBuilder<BodyMeasurement, BodyMeasurement, QFilterCondition> {
  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      bodyFatPercentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bodyFatPercent',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      bodyFatPercentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bodyFatPercent',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      bodyFatPercentEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bodyFatPercent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      bodyFatPercentGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bodyFatPercent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      bodyFatPercentLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bodyFatPercent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      bodyFatPercentBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bodyFatPercent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      chestCmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'chestCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      chestCmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'chestCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      chestCmEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'chestCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      chestCmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'chestCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      chestCmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'chestCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      chestCmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'chestCm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      createdAtGreaterThan(
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

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      createdAtLessThan(
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

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      createdAtBetween(
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

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      dateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      dateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      dateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      dateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      fatMassIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fatMass',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      fatMassIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fatMass',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      fatMassEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fatMass',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      fatMassGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fatMass',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      fatMassLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fatMass',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      fatMassBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fatMass',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      hipsCmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hipsCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      hipsCmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hipsCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      hipsCmEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hipsCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      hipsCmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hipsCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      hipsCmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hipsCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      hipsCmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hipsCm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leanBodyMassIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leanBodyMass',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leanBodyMassIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leanBodyMass',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leanBodyMassEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leanBodyMass',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leanBodyMassGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leanBodyMass',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leanBodyMassLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leanBodyMass',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leanBodyMassBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leanBodyMass',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftArmCmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leftArmCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftArmCmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leftArmCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftArmCmEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftArmCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftArmCmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftArmCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftArmCmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftArmCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftArmCmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftArmCm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftCalfCmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leftCalfCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftCalfCmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leftCalfCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftCalfCmEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftCalfCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftCalfCmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftCalfCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftCalfCmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftCalfCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftCalfCmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftCalfCm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftThighCmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'leftThighCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftThighCmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'leftThighCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftThighCmEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'leftThighCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftThighCmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'leftThighCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftThighCmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'leftThighCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      leftThighCmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'leftThighCm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      neckCmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'neckCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      neckCmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'neckCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      neckCmEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'neckCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      neckCmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'neckCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      neckCmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'neckCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      neckCmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'neckCm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      notesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      notesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      notesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      notesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      notesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      notesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      notesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      notesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      notesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      notesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      notesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      notesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      photoPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'photoPath',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      photoPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'photoPath',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      photoPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      photoPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      photoPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      photoPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'photoPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      photoPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      photoPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      photoPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'photoPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      photoPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'photoPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      photoPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      photoPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'photoPath',
        value: '',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightArmCmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rightArmCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightArmCmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rightArmCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightArmCmEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightArmCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightArmCmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightArmCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightArmCmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightArmCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightArmCmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightArmCm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightCalfCmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rightCalfCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightCalfCmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rightCalfCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightCalfCmEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightCalfCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightCalfCmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightCalfCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightCalfCmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightCalfCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightCalfCmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightCalfCm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightThighCmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rightThighCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightThighCmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rightThighCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightThighCmEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rightThighCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightThighCmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rightThighCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightThighCmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rightThighCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      rightThighCmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rightThighCm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      shouldersCmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shouldersCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      shouldersCmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shouldersCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      shouldersCmEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shouldersCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      shouldersCmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shouldersCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      shouldersCmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shouldersCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      shouldersCmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shouldersCm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      uuidEqualTo(
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

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      uuidGreaterThan(
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

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      uuidLessThan(
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

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      uuidBetween(
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

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      uuidStartsWith(
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

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      uuidEndsWith(
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

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      uuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      uuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      waistCmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'waistCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      waistCmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'waistCm',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      waistCmEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'waistCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      waistCmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'waistCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      waistCmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'waistCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      waistCmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'waistCm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      weightKgIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weightKg',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      weightKgIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weightKg',
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      weightKgEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weightKg',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      weightKgGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weightKg',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      weightKgLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weightKg',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterFilterCondition>
      weightKgBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weightKg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension BodyMeasurementQueryObject
    on QueryBuilder<BodyMeasurement, BodyMeasurement, QFilterCondition> {}

extension BodyMeasurementQueryLinks
    on QueryBuilder<BodyMeasurement, BodyMeasurement, QFilterCondition> {}

extension BodyMeasurementQuerySortBy
    on QueryBuilder<BodyMeasurement, BodyMeasurement, QSortBy> {
  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByBodyFatPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodyFatPercent', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByBodyFatPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodyFatPercent', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> sortByChestCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chestCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByChestCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chestCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> sortByFatMass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fatMass', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByFatMassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fatMass', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> sortByHipsCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hipsCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByHipsCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hipsCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByLeanBodyMass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leanBodyMass', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByLeanBodyMassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leanBodyMass', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByLeftArmCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftArmCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByLeftArmCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftArmCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByLeftCalfCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftCalfCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByLeftCalfCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftCalfCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByLeftThighCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftThighCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByLeftThighCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftThighCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> sortByNeckCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neckCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByNeckCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neckCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> sortByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByPhotoPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoPath', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByPhotoPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoPath', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByRightArmCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightArmCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByRightArmCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightArmCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByRightCalfCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightCalfCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByRightCalfCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightCalfCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByRightThighCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightThighCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByRightThighCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightThighCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByShouldersCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shouldersCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByShouldersCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shouldersCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> sortByWaistCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waistCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByWaistCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waistCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByWeightKg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightKg', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      sortByWeightKgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightKg', Sort.desc);
    });
  }
}

extension BodyMeasurementQuerySortThenBy
    on QueryBuilder<BodyMeasurement, BodyMeasurement, QSortThenBy> {
  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByBodyFatPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodyFatPercent', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByBodyFatPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bodyFatPercent', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> thenByChestCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chestCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByChestCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'chestCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> thenByFatMass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fatMass', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByFatMassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fatMass', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> thenByHipsCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hipsCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByHipsCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hipsCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByLeanBodyMass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leanBodyMass', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByLeanBodyMassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leanBodyMass', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByLeftArmCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftArmCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByLeftArmCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftArmCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByLeftCalfCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftCalfCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByLeftCalfCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftCalfCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByLeftThighCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftThighCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByLeftThighCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'leftThighCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> thenByNeckCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neckCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByNeckCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'neckCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> thenByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByPhotoPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoPath', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByPhotoPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoPath', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByRightArmCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightArmCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByRightArmCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightArmCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByRightCalfCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightCalfCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByRightCalfCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightCalfCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByRightThighCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightThighCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByRightThighCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rightThighCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByShouldersCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shouldersCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByShouldersCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shouldersCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy> thenByWaistCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waistCm', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByWaistCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'waistCm', Sort.desc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByWeightKg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightKg', Sort.asc);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QAfterSortBy>
      thenByWeightKgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightKg', Sort.desc);
    });
  }
}

extension BodyMeasurementQueryWhereDistinct
    on QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct> {
  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct>
      distinctByBodyFatPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bodyFatPercent');
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct>
      distinctByChestCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'chestCm');
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct>
      distinctByFatMass() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fatMass');
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct> distinctByHipsCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hipsCm');
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct>
      distinctByLeanBodyMass() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leanBodyMass');
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct>
      distinctByLeftArmCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leftArmCm');
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct>
      distinctByLeftCalfCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leftCalfCm');
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct>
      distinctByLeftThighCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'leftThighCm');
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct> distinctByNeckCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'neckCm');
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct> distinctByNotes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct> distinctByPhotoPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photoPath', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct>
      distinctByRightArmCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rightArmCm');
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct>
      distinctByRightCalfCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rightCalfCm');
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct>
      distinctByRightThighCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rightThighCm');
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct>
      distinctByShouldersCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shouldersCm');
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct> distinctByUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct>
      distinctByWaistCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'waistCm');
    });
  }

  QueryBuilder<BodyMeasurement, BodyMeasurement, QDistinct>
      distinctByWeightKg() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weightKg');
    });
  }
}

extension BodyMeasurementQueryProperty
    on QueryBuilder<BodyMeasurement, BodyMeasurement, QQueryProperty> {
  QueryBuilder<BodyMeasurement, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<BodyMeasurement, double?, QQueryOperations>
      bodyFatPercentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bodyFatPercent');
    });
  }

  QueryBuilder<BodyMeasurement, double?, QQueryOperations> chestCmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'chestCm');
    });
  }

  QueryBuilder<BodyMeasurement, DateTime, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<BodyMeasurement, DateTime, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<BodyMeasurement, double?, QQueryOperations> fatMassProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fatMass');
    });
  }

  QueryBuilder<BodyMeasurement, double?, QQueryOperations> hipsCmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hipsCm');
    });
  }

  QueryBuilder<BodyMeasurement, double?, QQueryOperations>
      leanBodyMassProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leanBodyMass');
    });
  }

  QueryBuilder<BodyMeasurement, double?, QQueryOperations> leftArmCmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leftArmCm');
    });
  }

  QueryBuilder<BodyMeasurement, double?, QQueryOperations>
      leftCalfCmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leftCalfCm');
    });
  }

  QueryBuilder<BodyMeasurement, double?, QQueryOperations>
      leftThighCmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'leftThighCm');
    });
  }

  QueryBuilder<BodyMeasurement, double?, QQueryOperations> neckCmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'neckCm');
    });
  }

  QueryBuilder<BodyMeasurement, String?, QQueryOperations> notesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notes');
    });
  }

  QueryBuilder<BodyMeasurement, String?, QQueryOperations> photoPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photoPath');
    });
  }

  QueryBuilder<BodyMeasurement, double?, QQueryOperations>
      rightArmCmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rightArmCm');
    });
  }

  QueryBuilder<BodyMeasurement, double?, QQueryOperations>
      rightCalfCmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rightCalfCm');
    });
  }

  QueryBuilder<BodyMeasurement, double?, QQueryOperations>
      rightThighCmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rightThighCm');
    });
  }

  QueryBuilder<BodyMeasurement, double?, QQueryOperations>
      shouldersCmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shouldersCm');
    });
  }

  QueryBuilder<BodyMeasurement, String, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }

  QueryBuilder<BodyMeasurement, double?, QQueryOperations> waistCmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'waistCm');
    });
  }

  QueryBuilder<BodyMeasurement, double?, QQueryOperations> weightKgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weightKg');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserProfileCollection on Isar {
  IsarCollection<UserProfile> get userProfiles => this.collection();
}

const UserProfileSchema = CollectionSchema(
  name: r'UserProfile',
  id: 4738427352541298891,
  properties: {
    r'activityLevel': PropertySchema(
      id: 0,
      name: r'activityLevel',
      type: IsarType.string,
      enumMap: _UserProfileactivityLevelEnumValueMap,
    ),
    r'age': PropertySchema(
      id: 1,
      name: r'age',
      type: IsarType.long,
    ),
    r'biologicalSex': PropertySchema(
      id: 2,
      name: r'biologicalSex',
      type: IsarType.string,
      enumMap: _UserProfilebiologicalSexEnumValueMap,
    ),
    r'dateOfBirth': PropertySchema(
      id: 3,
      name: r'dateOfBirth',
      type: IsarType.dateTime,
    ),
    r'heightCm': PropertySchema(
      id: 4,
      name: r'heightCm',
      type: IsarType.double,
    ),
    r'heightMeters': PropertySchema(
      id: 5,
      name: r'heightMeters',
      type: IsarType.double,
    ),
    r'lengthUnit': PropertySchema(
      id: 6,
      name: r'lengthUnit',
      type: IsarType.string,
      enumMap: _UserProfilelengthUnitEnumValueMap,
    ),
    r'name': PropertySchema(
      id: 7,
      name: r'name',
      type: IsarType.string,
    ),
    r'targetBodyFatPercent': PropertySchema(
      id: 8,
      name: r'targetBodyFatPercent',
      type: IsarType.double,
    ),
    r'targetWeightKg': PropertySchema(
      id: 9,
      name: r'targetWeightKg',
      type: IsarType.double,
    ),
    r'weightUnit': PropertySchema(
      id: 10,
      name: r'weightUnit',
      type: IsarType.string,
      enumMap: _UserProfileweightUnitEnumValueMap,
    )
  },
  estimateSize: _userProfileEstimateSize,
  serialize: _userProfileSerialize,
  deserialize: _userProfileDeserialize,
  deserializeProp: _userProfileDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _userProfileGetId,
  getLinks: _userProfileGetLinks,
  attach: _userProfileAttach,
  version: '3.1.0+1',
);

int _userProfileEstimateSize(
  UserProfile object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.activityLevel.name.length * 3;
  {
    final value = object.biologicalSex;
    if (value != null) {
      bytesCount += 3 + value.name.length * 3;
    }
  }
  bytesCount += 3 + object.lengthUnit.name.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.weightUnit.name.length * 3;
  return bytesCount;
}

void _userProfileSerialize(
  UserProfile object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.activityLevel.name);
  writer.writeLong(offsets[1], object.age);
  writer.writeString(offsets[2], object.biologicalSex?.name);
  writer.writeDateTime(offsets[3], object.dateOfBirth);
  writer.writeDouble(offsets[4], object.heightCm);
  writer.writeDouble(offsets[5], object.heightMeters);
  writer.writeString(offsets[6], object.lengthUnit.name);
  writer.writeString(offsets[7], object.name);
  writer.writeDouble(offsets[8], object.targetBodyFatPercent);
  writer.writeDouble(offsets[9], object.targetWeightKg);
  writer.writeString(offsets[10], object.weightUnit.name);
}

UserProfile _userProfileDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserProfile(
    activityLevel: _UserProfileactivityLevelValueEnumMap[
            reader.readStringOrNull(offsets[0])] ??
        ActivityLevel.moderate,
    biologicalSex: _UserProfilebiologicalSexValueEnumMap[
        reader.readStringOrNull(offsets[2])],
    dateOfBirth: reader.readDateTimeOrNull(offsets[3]),
    heightCm: reader.readDoubleOrNull(offsets[4]),
    lengthUnit: _UserProfilelengthUnitValueEnumMap[
            reader.readStringOrNull(offsets[6])] ??
        LengthUnit.cm,
    name: reader.readStringOrNull(offsets[7]) ?? '',
    targetBodyFatPercent: reader.readDoubleOrNull(offsets[8]),
    targetWeightKg: reader.readDoubleOrNull(offsets[9]),
    weightUnit: _UserProfileweightUnitValueEnumMap[
            reader.readStringOrNull(offsets[10])] ??
        WeightUnit.kg,
  );
  object.id = id;
  return object;
}

P _userProfileDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_UserProfileactivityLevelValueEnumMap[
              reader.readStringOrNull(offset)] ??
          ActivityLevel.moderate) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (_UserProfilebiologicalSexValueEnumMap[
          reader.readStringOrNull(offset)]) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (_UserProfilelengthUnitValueEnumMap[
              reader.readStringOrNull(offset)] ??
          LengthUnit.cm) as P;
    case 7:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    case 9:
      return (reader.readDoubleOrNull(offset)) as P;
    case 10:
      return (_UserProfileweightUnitValueEnumMap[
              reader.readStringOrNull(offset)] ??
          WeightUnit.kg) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _UserProfileactivityLevelEnumValueMap = {
  r'sedentary': r'sedentary',
  r'light': r'light',
  r'moderate': r'moderate',
  r'active': r'active',
  r'veryActive': r'veryActive',
};
const _UserProfileactivityLevelValueEnumMap = {
  r'sedentary': ActivityLevel.sedentary,
  r'light': ActivityLevel.light,
  r'moderate': ActivityLevel.moderate,
  r'active': ActivityLevel.active,
  r'veryActive': ActivityLevel.veryActive,
};
const _UserProfilebiologicalSexEnumValueMap = {
  r'male': r'male',
  r'female': r'female',
};
const _UserProfilebiologicalSexValueEnumMap = {
  r'male': BiologicalSex.male,
  r'female': BiologicalSex.female,
};
const _UserProfilelengthUnitEnumValueMap = {
  r'cm': r'cm',
  r'inches': r'inches',
};
const _UserProfilelengthUnitValueEnumMap = {
  r'cm': LengthUnit.cm,
  r'inches': LengthUnit.inches,
};
const _UserProfileweightUnitEnumValueMap = {
  r'kg': r'kg',
  r'lbs': r'lbs',
};
const _UserProfileweightUnitValueEnumMap = {
  r'kg': WeightUnit.kg,
  r'lbs': WeightUnit.lbs,
};

Id _userProfileGetId(UserProfile object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _userProfileGetLinks(UserProfile object) {
  return [];
}

void _userProfileAttach(
    IsarCollection<dynamic> col, Id id, UserProfile object) {
  object.id = id;
}

extension UserProfileQueryWhereSort
    on QueryBuilder<UserProfile, UserProfile, QWhere> {
  QueryBuilder<UserProfile, UserProfile, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserProfileQueryWhere
    on QueryBuilder<UserProfile, UserProfile, QWhereClause> {
  QueryBuilder<UserProfile, UserProfile, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<UserProfile, UserProfile, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterWhereClause> idBetween(
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
}

extension UserProfileQueryFilter
    on QueryBuilder<UserProfile, UserProfile, QFilterCondition> {
  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      activityLevelEqualTo(
    ActivityLevel value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activityLevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      activityLevelGreaterThan(
    ActivityLevel value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'activityLevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      activityLevelLessThan(
    ActivityLevel value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'activityLevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      activityLevelBetween(
    ActivityLevel lower,
    ActivityLevel upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'activityLevel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      activityLevelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'activityLevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      activityLevelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'activityLevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      activityLevelContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'activityLevel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      activityLevelMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'activityLevel',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      activityLevelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'activityLevel',
        value: '',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      activityLevelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'activityLevel',
        value: '',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> ageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'age',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> ageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'age',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> ageEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'age',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> ageGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'age',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> ageLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'age',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> ageBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'age',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      biologicalSexIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'biologicalSex',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      biologicalSexIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'biologicalSex',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      biologicalSexEqualTo(
    BiologicalSex? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'biologicalSex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      biologicalSexGreaterThan(
    BiologicalSex? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'biologicalSex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      biologicalSexLessThan(
    BiologicalSex? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'biologicalSex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      biologicalSexBetween(
    BiologicalSex? lower,
    BiologicalSex? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'biologicalSex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      biologicalSexStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'biologicalSex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      biologicalSexEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'biologicalSex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      biologicalSexContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'biologicalSex',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      biologicalSexMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'biologicalSex',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      biologicalSexIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'biologicalSex',
        value: '',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      biologicalSexIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'biologicalSex',
        value: '',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      dateOfBirthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateOfBirth',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      dateOfBirthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateOfBirth',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      dateOfBirthEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateOfBirth',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      dateOfBirthGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateOfBirth',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      dateOfBirthLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateOfBirth',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      dateOfBirthBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateOfBirth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      heightCmIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'heightCm',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      heightCmIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'heightCm',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> heightCmEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'heightCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      heightCmGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'heightCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      heightCmLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'heightCm',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> heightCmBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'heightCm',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      heightMetersIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'heightMeters',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      heightMetersIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'heightMeters',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      heightMetersEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'heightMeters',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      heightMetersGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'heightMeters',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      heightMetersLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'heightMeters',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      heightMetersBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'heightMeters',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> idBetween(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      lengthUnitEqualTo(
    LengthUnit value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lengthUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      lengthUnitGreaterThan(
    LengthUnit value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lengthUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      lengthUnitLessThan(
    LengthUnit value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lengthUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      lengthUnitBetween(
    LengthUnit lower,
    LengthUnit upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lengthUnit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      lengthUnitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lengthUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      lengthUnitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lengthUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      lengthUnitContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lengthUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      lengthUnitMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lengthUnit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      lengthUnitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lengthUnit',
        value: '',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      lengthUnitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lengthUnit',
        value: '',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> nameEqualTo(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> nameGreaterThan(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> nameLessThan(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> nameBetween(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> nameStartsWith(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> nameEndsWith(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> nameContains(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> nameMatches(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      targetBodyFatPercentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'targetBodyFatPercent',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      targetBodyFatPercentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'targetBodyFatPercent',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      targetBodyFatPercentEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'targetBodyFatPercent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      targetBodyFatPercentGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'targetBodyFatPercent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      targetBodyFatPercentLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'targetBodyFatPercent',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      targetBodyFatPercentBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'targetBodyFatPercent',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      targetWeightKgIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'targetWeightKg',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      targetWeightKgIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'targetWeightKg',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      targetWeightKgEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'targetWeightKg',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      targetWeightKgGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'targetWeightKg',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      targetWeightKgLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'targetWeightKg',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      targetWeightKgBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'targetWeightKg',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      weightUnitEqualTo(
    WeightUnit value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weightUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      weightUnitGreaterThan(
    WeightUnit value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weightUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      weightUnitLessThan(
    WeightUnit value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weightUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      weightUnitBetween(
    WeightUnit lower,
    WeightUnit upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weightUnit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      weightUnitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weightUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      weightUnitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weightUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      weightUnitContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weightUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      weightUnitMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weightUnit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      weightUnitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weightUnit',
        value: '',
      ));
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      weightUnitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weightUnit',
        value: '',
      ));
    });
  }
}

extension UserProfileQueryObject
    on QueryBuilder<UserProfile, UserProfile, QFilterCondition> {}

extension UserProfileQueryLinks
    on QueryBuilder<UserProfile, UserProfile, QFilterCondition> {}

extension UserProfileQuerySortBy
    on QueryBuilder<UserProfile, UserProfile, QSortBy> {
  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByActivityLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityLevel', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy>
      sortByActivityLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityLevel', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByAge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'age', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByAgeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'age', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByBiologicalSex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'biologicalSex', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy>
      sortByBiologicalSexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'biologicalSex', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByDateOfBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByDateOfBirthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByHeightCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightCm', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByHeightCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightCm', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByHeightMeters() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightMeters', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy>
      sortByHeightMetersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightMeters', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByLengthUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lengthUnit', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByLengthUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lengthUnit', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy>
      sortByTargetBodyFatPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetBodyFatPercent', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy>
      sortByTargetBodyFatPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetBodyFatPercent', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByTargetWeightKg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetWeightKg', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy>
      sortByTargetWeightKgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetWeightKg', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByWeightUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightUnit', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByWeightUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightUnit', Sort.desc);
    });
  }
}

extension UserProfileQuerySortThenBy
    on QueryBuilder<UserProfile, UserProfile, QSortThenBy> {
  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByActivityLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityLevel', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy>
      thenByActivityLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'activityLevel', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByAge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'age', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByAgeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'age', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByBiologicalSex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'biologicalSex', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy>
      thenByBiologicalSexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'biologicalSex', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByDateOfBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByDateOfBirthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateOfBirth', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByHeightCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightCm', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByHeightCmDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightCm', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByHeightMeters() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightMeters', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy>
      thenByHeightMetersDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heightMeters', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByLengthUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lengthUnit', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByLengthUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lengthUnit', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy>
      thenByTargetBodyFatPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetBodyFatPercent', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy>
      thenByTargetBodyFatPercentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetBodyFatPercent', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByTargetWeightKg() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetWeightKg', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy>
      thenByTargetWeightKgDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'targetWeightKg', Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByWeightUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightUnit', Sort.asc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByWeightUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightUnit', Sort.desc);
    });
  }
}

extension UserProfileQueryWhereDistinct
    on QueryBuilder<UserProfile, UserProfile, QDistinct> {
  QueryBuilder<UserProfile, UserProfile, QDistinct> distinctByActivityLevel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'activityLevel',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QDistinct> distinctByAge() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'age');
    });
  }

  QueryBuilder<UserProfile, UserProfile, QDistinct> distinctByBiologicalSex(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'biologicalSex',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QDistinct> distinctByDateOfBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateOfBirth');
    });
  }

  QueryBuilder<UserProfile, UserProfile, QDistinct> distinctByHeightCm() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'heightCm');
    });
  }

  QueryBuilder<UserProfile, UserProfile, QDistinct> distinctByHeightMeters() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'heightMeters');
    });
  }

  QueryBuilder<UserProfile, UserProfile, QDistinct> distinctByLengthUnit(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lengthUnit', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QDistinct>
      distinctByTargetBodyFatPercent() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'targetBodyFatPercent');
    });
  }

  QueryBuilder<UserProfile, UserProfile, QDistinct> distinctByTargetWeightKg() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'targetWeightKg');
    });
  }

  QueryBuilder<UserProfile, UserProfile, QDistinct> distinctByWeightUnit(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weightUnit', caseSensitive: caseSensitive);
    });
  }
}

extension UserProfileQueryProperty
    on QueryBuilder<UserProfile, UserProfile, QQueryProperty> {
  QueryBuilder<UserProfile, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserProfile, ActivityLevel, QQueryOperations>
      activityLevelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'activityLevel');
    });
  }

  QueryBuilder<UserProfile, int?, QQueryOperations> ageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'age');
    });
  }

  QueryBuilder<UserProfile, BiologicalSex?, QQueryOperations>
      biologicalSexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'biologicalSex');
    });
  }

  QueryBuilder<UserProfile, DateTime?, QQueryOperations> dateOfBirthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateOfBirth');
    });
  }

  QueryBuilder<UserProfile, double?, QQueryOperations> heightCmProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'heightCm');
    });
  }

  QueryBuilder<UserProfile, double?, QQueryOperations> heightMetersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'heightMeters');
    });
  }

  QueryBuilder<UserProfile, LengthUnit, QQueryOperations> lengthUnitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lengthUnit');
    });
  }

  QueryBuilder<UserProfile, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<UserProfile, double?, QQueryOperations>
      targetBodyFatPercentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'targetBodyFatPercent');
    });
  }

  QueryBuilder<UserProfile, double?, QQueryOperations>
      targetWeightKgProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'targetWeightKg');
    });
  }

  QueryBuilder<UserProfile, WeightUnit, QQueryOperations> weightUnitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weightUnit');
    });
  }
}
