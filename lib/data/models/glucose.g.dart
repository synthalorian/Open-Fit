// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'glucose.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGlucoseReadingCollection on Isar {
  IsarCollection<GlucoseReading> get glucoseReadings => this.collection();
}

const GlucoseReadingSchema = CollectionSchema(
  name: r'GlucoseReading',
  id: -426595568269055414,
  properties: {
    r'context': PropertySchema(
      id: 0,
      name: r'context',
      type: IsarType.string,
      enumMap: _GlucoseReadingcontextEnumValueMap,
    ),
    r'notes': PropertySchema(
      id: 1,
      name: r'notes',
      type: IsarType.string,
    ),
    r'tags': PropertySchema(
      id: 2,
      name: r'tags',
      type: IsarType.stringList,
    ),
    r'timestamp': PropertySchema(
      id: 3,
      name: r'timestamp',
      type: IsarType.dateTime,
    ),
    r'uuid': PropertySchema(
      id: 4,
      name: r'uuid',
      type: IsarType.string,
    ),
    r'valueMgDl': PropertySchema(
      id: 5,
      name: r'valueMgDl',
      type: IsarType.double,
    )
  },
  estimateSize: _glucoseReadingEstimateSize,
  serialize: _glucoseReadingSerialize,
  deserialize: _glucoseReadingDeserialize,
  deserializeProp: _glucoseReadingDeserializeProp,
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
  getId: _glucoseReadingGetId,
  getLinks: _glucoseReadingGetLinks,
  attach: _glucoseReadingAttach,
  version: '3.1.0+1',
);

int _glucoseReadingEstimateSize(
  GlucoseReading object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.context.name.length * 3;
  {
    final value = object.notes;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.tags.length * 3;
  {
    for (var i = 0; i < object.tags.length; i++) {
      final value = object.tags[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.uuid.length * 3;
  return bytesCount;
}

void _glucoseReadingSerialize(
  GlucoseReading object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.context.name);
  writer.writeString(offsets[1], object.notes);
  writer.writeStringList(offsets[2], object.tags);
  writer.writeDateTime(offsets[3], object.timestamp);
  writer.writeString(offsets[4], object.uuid);
  writer.writeDouble(offsets[5], object.valueMgDl);
}

GlucoseReading _glucoseReadingDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GlucoseReading(
    context: _GlucoseReadingcontextValueEnumMap[
            reader.readStringOrNull(offsets[0])] ??
        GlucoseContext.fasting,
    notes: reader.readStringOrNull(offsets[1]),
    tags: reader.readStringList(offsets[2]) ?? const [],
    timestamp: reader.readDateTime(offsets[3]),
    uuid: reader.readString(offsets[4]),
    valueMgDl: reader.readDouble(offsets[5]),
  );
  object.id = id;
  return object;
}

P _glucoseReadingDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_GlucoseReadingcontextValueEnumMap[
              reader.readStringOrNull(offset)] ??
          GlucoseContext.fasting) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringList(offset) ?? const []) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _GlucoseReadingcontextEnumValueMap = {
  r'fasting': r'fasting',
  r'preMeal': r'preMeal',
  r'postMeal': r'postMeal',
  r'bedtime': r'bedtime',
  r'general': r'general',
};
const _GlucoseReadingcontextValueEnumMap = {
  r'fasting': GlucoseContext.fasting,
  r'preMeal': GlucoseContext.preMeal,
  r'postMeal': GlucoseContext.postMeal,
  r'bedtime': GlucoseContext.bedtime,
  r'general': GlucoseContext.general,
};

Id _glucoseReadingGetId(GlucoseReading object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _glucoseReadingGetLinks(GlucoseReading object) {
  return [];
}

void _glucoseReadingAttach(
    IsarCollection<dynamic> col, Id id, GlucoseReading object) {
  object.id = id;
}

extension GlucoseReadingByIndex on IsarCollection<GlucoseReading> {
  Future<GlucoseReading?> getByUuid(String uuid) {
    return getByIndex(r'uuid', [uuid]);
  }

  GlucoseReading? getByUuidSync(String uuid) {
    return getByIndexSync(r'uuid', [uuid]);
  }

  Future<bool> deleteByUuid(String uuid) {
    return deleteByIndex(r'uuid', [uuid]);
  }

  bool deleteByUuidSync(String uuid) {
    return deleteByIndexSync(r'uuid', [uuid]);
  }

  Future<List<GlucoseReading?>> getAllByUuid(List<String> uuidValues) {
    final values = uuidValues.map((e) => [e]).toList();
    return getAllByIndex(r'uuid', values);
  }

  List<GlucoseReading?> getAllByUuidSync(List<String> uuidValues) {
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

  Future<Id> putByUuid(GlucoseReading object) {
    return putByIndex(r'uuid', object);
  }

  Id putByUuidSync(GlucoseReading object, {bool saveLinks = true}) {
    return putByIndexSync(r'uuid', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUuid(List<GlucoseReading> objects) {
    return putAllByIndex(r'uuid', objects);
  }

  List<Id> putAllByUuidSync(List<GlucoseReading> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'uuid', objects, saveLinks: saveLinks);
  }
}

extension GlucoseReadingQueryWhereSort
    on QueryBuilder<GlucoseReading, GlucoseReading, QWhere> {
  QueryBuilder<GlucoseReading, GlucoseReading, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GlucoseReadingQueryWhere
    on QueryBuilder<GlucoseReading, GlucoseReading, QWhereClause> {
  QueryBuilder<GlucoseReading, GlucoseReading, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterWhereClause> idBetween(
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

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterWhereClause> uuidEqualTo(
      String uuid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'uuid',
        value: [uuid],
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterWhereClause>
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

extension GlucoseReadingQueryFilter
    on QueryBuilder<GlucoseReading, GlucoseReading, QFilterCondition> {
  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      contextEqualTo(
    GlucoseContext value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'context',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      contextGreaterThan(
    GlucoseContext value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'context',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      contextLessThan(
    GlucoseContext value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'context',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      contextBetween(
    GlucoseContext lower,
    GlucoseContext upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'context',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      contextStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'context',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      contextEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'context',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      contextContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'context',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      contextMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'context',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      contextIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'context',
        value: '',
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      contextIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'context',
        value: '',
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
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

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
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

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition> idBetween(
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

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      notesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      notesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
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

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
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

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
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

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
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

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
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

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
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

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      notesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      notesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      notesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      notesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      tagsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      tagsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      tagsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      tagsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tags',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      tagsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      tagsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      tagsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      tagsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tags',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      tagsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: '',
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      tagsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tags',
        value: '',
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      tagsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      tagsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      tagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      tagsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      tagsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      tagsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      timestampEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      timestampGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      timestampLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timestamp',
        value: value,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      timestampBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timestamp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
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

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
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

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
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

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
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

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
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

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
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

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      uuidContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uuid',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      uuidMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uuid',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uuid',
        value: '',
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      valueMgDlEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'valueMgDl',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      valueMgDlGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'valueMgDl',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      valueMgDlLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'valueMgDl',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterFilterCondition>
      valueMgDlBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'valueMgDl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension GlucoseReadingQueryObject
    on QueryBuilder<GlucoseReading, GlucoseReading, QFilterCondition> {}

extension GlucoseReadingQueryLinks
    on QueryBuilder<GlucoseReading, GlucoseReading, QFilterCondition> {}

extension GlucoseReadingQuerySortBy
    on QueryBuilder<GlucoseReading, GlucoseReading, QSortBy> {
  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy> sortByContext() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'context', Sort.asc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy>
      sortByContextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'context', Sort.desc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy> sortByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy> sortByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy> sortByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy>
      sortByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy> sortByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy> sortByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy> sortByValueMgDl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valueMgDl', Sort.asc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy>
      sortByValueMgDlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valueMgDl', Sort.desc);
    });
  }
}

extension GlucoseReadingQuerySortThenBy
    on QueryBuilder<GlucoseReading, GlucoseReading, QSortThenBy> {
  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy> thenByContext() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'context', Sort.asc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy>
      thenByContextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'context', Sort.desc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy> thenByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy> thenByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy> thenByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.asc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy>
      thenByTimestampDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timestamp', Sort.desc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy> thenByUuid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.asc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy> thenByUuidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uuid', Sort.desc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy> thenByValueMgDl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valueMgDl', Sort.asc);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QAfterSortBy>
      thenByValueMgDlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'valueMgDl', Sort.desc);
    });
  }
}

extension GlucoseReadingQueryWhereDistinct
    on QueryBuilder<GlucoseReading, GlucoseReading, QDistinct> {
  QueryBuilder<GlucoseReading, GlucoseReading, QDistinct> distinctByContext(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'context', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QDistinct> distinctByNotes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QDistinct> distinctByTags() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tags');
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QDistinct>
      distinctByTimestamp() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timestamp');
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QDistinct> distinctByUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uuid', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GlucoseReading, GlucoseReading, QDistinct>
      distinctByValueMgDl() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'valueMgDl');
    });
  }
}

extension GlucoseReadingQueryProperty
    on QueryBuilder<GlucoseReading, GlucoseReading, QQueryProperty> {
  QueryBuilder<GlucoseReading, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<GlucoseReading, GlucoseContext, QQueryOperations>
      contextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'context');
    });
  }

  QueryBuilder<GlucoseReading, String?, QQueryOperations> notesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notes');
    });
  }

  QueryBuilder<GlucoseReading, List<String>, QQueryOperations> tagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tags');
    });
  }

  QueryBuilder<GlucoseReading, DateTime, QQueryOperations> timestampProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timestamp');
    });
  }

  QueryBuilder<GlucoseReading, String, QQueryOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uuid');
    });
  }

  QueryBuilder<GlucoseReading, double, QQueryOperations> valueMgDlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'valueMgDl');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGlucoseTargetsCollection on Isar {
  IsarCollection<GlucoseTargets> get glucoseTargets => this.collection();
}

const GlucoseTargetsSchema = CollectionSchema(
  name: r'GlucoseTargets',
  id: 4859985084229791412,
  properties: {
    r'displayUnit': PropertySchema(
      id: 0,
      name: r'displayUnit',
      type: IsarType.string,
      enumMap: _GlucoseTargetsdisplayUnitEnumValueMap,
    ),
    r'fastingHigh': PropertySchema(
      id: 1,
      name: r'fastingHigh',
      type: IsarType.double,
    ),
    r'fastingLow': PropertySchema(
      id: 2,
      name: r'fastingLow',
      type: IsarType.double,
    ),
    r'postMealHigh': PropertySchema(
      id: 3,
      name: r'postMealHigh',
      type: IsarType.double,
    ),
    r'postMealLow': PropertySchema(
      id: 4,
      name: r'postMealLow',
      type: IsarType.double,
    ),
    r'preMealHigh': PropertySchema(
      id: 5,
      name: r'preMealHigh',
      type: IsarType.double,
    ),
    r'preMealLow': PropertySchema(
      id: 6,
      name: r'preMealLow',
      type: IsarType.double,
    )
  },
  estimateSize: _glucoseTargetsEstimateSize,
  serialize: _glucoseTargetsSerialize,
  deserialize: _glucoseTargetsDeserialize,
  deserializeProp: _glucoseTargetsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _glucoseTargetsGetId,
  getLinks: _glucoseTargetsGetLinks,
  attach: _glucoseTargetsAttach,
  version: '3.1.0+1',
);

int _glucoseTargetsEstimateSize(
  GlucoseTargets object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.displayUnit.name.length * 3;
  return bytesCount;
}

void _glucoseTargetsSerialize(
  GlucoseTargets object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.displayUnit.name);
  writer.writeDouble(offsets[1], object.fastingHigh);
  writer.writeDouble(offsets[2], object.fastingLow);
  writer.writeDouble(offsets[3], object.postMealHigh);
  writer.writeDouble(offsets[4], object.postMealLow);
  writer.writeDouble(offsets[5], object.preMealHigh);
  writer.writeDouble(offsets[6], object.preMealLow);
}

GlucoseTargets _glucoseTargetsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GlucoseTargets(
    displayUnit: _GlucoseTargetsdisplayUnitValueEnumMap[
            reader.readStringOrNull(offsets[0])] ??
        GlucoseUnit.mgDl,
    fastingHigh: reader.readDoubleOrNull(offsets[1]) ?? 100,
    fastingLow: reader.readDoubleOrNull(offsets[2]) ?? 70,
    postMealHigh: reader.readDoubleOrNull(offsets[3]) ?? 180,
    postMealLow: reader.readDoubleOrNull(offsets[4]) ?? 70,
    preMealHigh: reader.readDoubleOrNull(offsets[5]) ?? 130,
    preMealLow: reader.readDoubleOrNull(offsets[6]) ?? 70,
  );
  object.id = id;
  return object;
}

P _glucoseTargetsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_GlucoseTargetsdisplayUnitValueEnumMap[
              reader.readStringOrNull(offset)] ??
          GlucoseUnit.mgDl) as P;
    case 1:
      return (reader.readDoubleOrNull(offset) ?? 100) as P;
    case 2:
      return (reader.readDoubleOrNull(offset) ?? 70) as P;
    case 3:
      return (reader.readDoubleOrNull(offset) ?? 180) as P;
    case 4:
      return (reader.readDoubleOrNull(offset) ?? 70) as P;
    case 5:
      return (reader.readDoubleOrNull(offset) ?? 130) as P;
    case 6:
      return (reader.readDoubleOrNull(offset) ?? 70) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _GlucoseTargetsdisplayUnitEnumValueMap = {
  r'mgDl': r'mgDl',
  r'mmolL': r'mmolL',
};
const _GlucoseTargetsdisplayUnitValueEnumMap = {
  r'mgDl': GlucoseUnit.mgDl,
  r'mmolL': GlucoseUnit.mmolL,
};

Id _glucoseTargetsGetId(GlucoseTargets object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _glucoseTargetsGetLinks(GlucoseTargets object) {
  return [];
}

void _glucoseTargetsAttach(
    IsarCollection<dynamic> col, Id id, GlucoseTargets object) {
  object.id = id;
}

extension GlucoseTargetsQueryWhereSort
    on QueryBuilder<GlucoseTargets, GlucoseTargets, QWhere> {
  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GlucoseTargetsQueryWhere
    on QueryBuilder<GlucoseTargets, GlucoseTargets, QWhereClause> {
  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterWhereClause> idBetween(
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

extension GlucoseTargetsQueryFilter
    on QueryBuilder<GlucoseTargets, GlucoseTargets, QFilterCondition> {
  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      displayUnitEqualTo(
    GlucoseUnit value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'displayUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      displayUnitGreaterThan(
    GlucoseUnit value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'displayUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      displayUnitLessThan(
    GlucoseUnit value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'displayUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      displayUnitBetween(
    GlucoseUnit lower,
    GlucoseUnit upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'displayUnit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      displayUnitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'displayUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      displayUnitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'displayUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      displayUnitContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'displayUnit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      displayUnitMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'displayUnit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      displayUnitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'displayUnit',
        value: '',
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      displayUnitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'displayUnit',
        value: '',
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      fastingHighEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fastingHigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      fastingHighGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fastingHigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      fastingHighLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fastingHigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      fastingHighBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fastingHigh',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      fastingLowEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fastingLow',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      fastingLowGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fastingLow',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      fastingLowLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fastingLow',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      fastingLowBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fastingLow',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
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

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
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

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition> idBetween(
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

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      postMealHighEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'postMealHigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      postMealHighGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'postMealHigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      postMealHighLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'postMealHigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      postMealHighBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'postMealHigh',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      postMealLowEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'postMealLow',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      postMealLowGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'postMealLow',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      postMealLowLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'postMealLow',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      postMealLowBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'postMealLow',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      preMealHighEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preMealHigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      preMealHighGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'preMealHigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      preMealHighLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'preMealHigh',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      preMealHighBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'preMealHigh',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      preMealLowEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preMealLow',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      preMealLowGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'preMealLow',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      preMealLowLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'preMealLow',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterFilterCondition>
      preMealLowBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'preMealLow',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension GlucoseTargetsQueryObject
    on QueryBuilder<GlucoseTargets, GlucoseTargets, QFilterCondition> {}

extension GlucoseTargetsQueryLinks
    on QueryBuilder<GlucoseTargets, GlucoseTargets, QFilterCondition> {}

extension GlucoseTargetsQuerySortBy
    on QueryBuilder<GlucoseTargets, GlucoseTargets, QSortBy> {
  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      sortByDisplayUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayUnit', Sort.asc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      sortByDisplayUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayUnit', Sort.desc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      sortByFastingHigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fastingHigh', Sort.asc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      sortByFastingHighDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fastingHigh', Sort.desc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      sortByFastingLow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fastingLow', Sort.asc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      sortByFastingLowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fastingLow', Sort.desc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      sortByPostMealHigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postMealHigh', Sort.asc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      sortByPostMealHighDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postMealHigh', Sort.desc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      sortByPostMealLow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postMealLow', Sort.asc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      sortByPostMealLowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postMealLow', Sort.desc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      sortByPreMealHigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preMealHigh', Sort.asc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      sortByPreMealHighDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preMealHigh', Sort.desc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      sortByPreMealLow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preMealLow', Sort.asc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      sortByPreMealLowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preMealLow', Sort.desc);
    });
  }
}

extension GlucoseTargetsQuerySortThenBy
    on QueryBuilder<GlucoseTargets, GlucoseTargets, QSortThenBy> {
  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      thenByDisplayUnit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayUnit', Sort.asc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      thenByDisplayUnitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'displayUnit', Sort.desc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      thenByFastingHigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fastingHigh', Sort.asc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      thenByFastingHighDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fastingHigh', Sort.desc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      thenByFastingLow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fastingLow', Sort.asc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      thenByFastingLowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fastingLow', Sort.desc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      thenByPostMealHigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postMealHigh', Sort.asc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      thenByPostMealHighDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postMealHigh', Sort.desc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      thenByPostMealLow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postMealLow', Sort.asc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      thenByPostMealLowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postMealLow', Sort.desc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      thenByPreMealHigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preMealHigh', Sort.asc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      thenByPreMealHighDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preMealHigh', Sort.desc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      thenByPreMealLow() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preMealLow', Sort.asc);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QAfterSortBy>
      thenByPreMealLowDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preMealLow', Sort.desc);
    });
  }
}

extension GlucoseTargetsQueryWhereDistinct
    on QueryBuilder<GlucoseTargets, GlucoseTargets, QDistinct> {
  QueryBuilder<GlucoseTargets, GlucoseTargets, QDistinct> distinctByDisplayUnit(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'displayUnit', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QDistinct>
      distinctByFastingHigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fastingHigh');
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QDistinct>
      distinctByFastingLow() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fastingLow');
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QDistinct>
      distinctByPostMealHigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'postMealHigh');
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QDistinct>
      distinctByPostMealLow() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'postMealLow');
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QDistinct>
      distinctByPreMealHigh() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'preMealHigh');
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseTargets, QDistinct>
      distinctByPreMealLow() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'preMealLow');
    });
  }
}

extension GlucoseTargetsQueryProperty
    on QueryBuilder<GlucoseTargets, GlucoseTargets, QQueryProperty> {
  QueryBuilder<GlucoseTargets, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<GlucoseTargets, GlucoseUnit, QQueryOperations>
      displayUnitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'displayUnit');
    });
  }

  QueryBuilder<GlucoseTargets, double, QQueryOperations> fastingHighProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fastingHigh');
    });
  }

  QueryBuilder<GlucoseTargets, double, QQueryOperations> fastingLowProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fastingLow');
    });
  }

  QueryBuilder<GlucoseTargets, double, QQueryOperations>
      postMealHighProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'postMealHigh');
    });
  }

  QueryBuilder<GlucoseTargets, double, QQueryOperations> postMealLowProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'postMealLow');
    });
  }

  QueryBuilder<GlucoseTargets, double, QQueryOperations> preMealHighProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'preMealHigh');
    });
  }

  QueryBuilder<GlucoseTargets, double, QQueryOperations> preMealLowProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'preMealLow');
    });
  }
}
