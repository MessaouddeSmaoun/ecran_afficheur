// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_isar.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDataIsarCollection on Isar {
  IsarCollection<DataIsar> get dataIsars => this.collection();
}

const DataIsarSchema = CollectionSchema(
  name: r'DataIsar',
  id: 9065439846064842014,
  properties: {
    r'adressServer': PropertySchema(
      id: 0,
      name: r'adressServer',
      type: IsarType.string,
    ),
    r'ecranEnteteSetting': PropertySchema(
      id: 1,
      name: r'ecranEnteteSetting',
      type: IsarType.dateTime,
    ),
    r'ecranListMedia': PropertySchema(
      id: 2,
      name: r'ecranListMedia',
      type: IsarType.dateTime,
    ),
    r'ecranModeAppel': PropertySchema(
      id: 3,
      name: r'ecranModeAppel',
      type: IsarType.dateTime,
    ),
    r'ecranModeVideo': PropertySchema(
      id: 4,
      name: r'ecranModeVideo',
      type: IsarType.dateTime,
    ),
    r'nomTv': PropertySchema(
      id: 5,
      name: r'nomTv',
      type: IsarType.string,
    )
  },
  estimateSize: _dataIsarEstimateSize,
  serialize: _dataIsarSerialize,
  deserialize: _dataIsarDeserialize,
  deserializeProp: _dataIsarDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _dataIsarGetId,
  getLinks: _dataIsarGetLinks,
  attach: _dataIsarAttach,
  version: '3.1.0+1',
);

int _dataIsarEstimateSize(
  DataIsar object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.adressServer.length * 3;
  bytesCount += 3 + object.nomTv.length * 3;
  return bytesCount;
}

void _dataIsarSerialize(
  DataIsar object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.adressServer);
  writer.writeDateTime(offsets[1], object.ecranEnteteSetting);
  writer.writeDateTime(offsets[2], object.ecranListMedia);
  writer.writeDateTime(offsets[3], object.ecranModeAppel);
  writer.writeDateTime(offsets[4], object.ecranModeVideo);
  writer.writeString(offsets[5], object.nomTv);
}

DataIsar _dataIsarDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DataIsar(
    adressServer: reader.readString(offsets[0]),
    nomTv: reader.readString(offsets[5]),
  );
  object.ecranEnteteSetting = reader.readDateTimeOrNull(offsets[1]);
  object.ecranListMedia = reader.readDateTimeOrNull(offsets[2]);
  object.ecranModeAppel = reader.readDateTimeOrNull(offsets[3]);
  object.ecranModeVideo = reader.readDateTimeOrNull(offsets[4]);
  object.id = id;
  return object;
}

P _dataIsarDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _dataIsarGetId(DataIsar object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _dataIsarGetLinks(DataIsar object) {
  return [];
}

void _dataIsarAttach(IsarCollection<dynamic> col, Id id, DataIsar object) {
  object.id = id;
}

extension DataIsarQueryWhereSort on QueryBuilder<DataIsar, DataIsar, QWhere> {
  QueryBuilder<DataIsar, DataIsar, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DataIsarQueryWhere on QueryBuilder<DataIsar, DataIsar, QWhereClause> {
  QueryBuilder<DataIsar, DataIsar, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<DataIsar, DataIsar, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterWhereClause> idBetween(
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

extension DataIsarQueryFilter
    on QueryBuilder<DataIsar, DataIsar, QFilterCondition> {
  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> adressServerEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adressServer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      adressServerGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'adressServer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> adressServerLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'adressServer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> adressServerBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'adressServer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      adressServerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'adressServer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> adressServerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'adressServer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> adressServerContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'adressServer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> adressServerMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'adressServer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      adressServerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'adressServer',
        value: '',
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      adressServerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'adressServer',
        value: '',
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranEnteteSettingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ecranEnteteSetting',
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranEnteteSettingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ecranEnteteSetting',
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranEnteteSettingEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ecranEnteteSetting',
        value: value,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranEnteteSettingGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ecranEnteteSetting',
        value: value,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranEnteteSettingLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ecranEnteteSetting',
        value: value,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranEnteteSettingBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ecranEnteteSetting',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranListMediaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ecranListMedia',
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranListMediaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ecranListMedia',
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> ecranListMediaEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ecranListMedia',
        value: value,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranListMediaGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ecranListMedia',
        value: value,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranListMediaLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ecranListMedia',
        value: value,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> ecranListMediaBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ecranListMedia',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranModeAppelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ecranModeAppel',
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranModeAppelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ecranModeAppel',
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> ecranModeAppelEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ecranModeAppel',
        value: value,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranModeAppelGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ecranModeAppel',
        value: value,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranModeAppelLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ecranModeAppel',
        value: value,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> ecranModeAppelBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ecranModeAppel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranModeVideoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ecranModeVideo',
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranModeVideoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ecranModeVideo',
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> ecranModeVideoEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ecranModeVideo',
        value: value,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranModeVideoGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ecranModeVideo',
        value: value,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition>
      ecranModeVideoLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ecranModeVideo',
        value: value,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> ecranModeVideoBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ecranModeVideo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> idBetween(
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

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> nomTvEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nomTv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> nomTvGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nomTv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> nomTvLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nomTv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> nomTvBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nomTv',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> nomTvStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nomTv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> nomTvEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nomTv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> nomTvContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nomTv',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> nomTvMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nomTv',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> nomTvIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nomTv',
        value: '',
      ));
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterFilterCondition> nomTvIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nomTv',
        value: '',
      ));
    });
  }
}

extension DataIsarQueryObject
    on QueryBuilder<DataIsar, DataIsar, QFilterCondition> {}

extension DataIsarQueryLinks
    on QueryBuilder<DataIsar, DataIsar, QFilterCondition> {}

extension DataIsarQuerySortBy on QueryBuilder<DataIsar, DataIsar, QSortBy> {
  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> sortByAdressServer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adressServer', Sort.asc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> sortByAdressServerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adressServer', Sort.desc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> sortByEcranEnteteSetting() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecranEnteteSetting', Sort.asc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy>
      sortByEcranEnteteSettingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecranEnteteSetting', Sort.desc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> sortByEcranListMedia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecranListMedia', Sort.asc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> sortByEcranListMediaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecranListMedia', Sort.desc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> sortByEcranModeAppel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecranModeAppel', Sort.asc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> sortByEcranModeAppelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecranModeAppel', Sort.desc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> sortByEcranModeVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecranModeVideo', Sort.asc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> sortByEcranModeVideoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecranModeVideo', Sort.desc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> sortByNomTv() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomTv', Sort.asc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> sortByNomTvDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomTv', Sort.desc);
    });
  }
}

extension DataIsarQuerySortThenBy
    on QueryBuilder<DataIsar, DataIsar, QSortThenBy> {
  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> thenByAdressServer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adressServer', Sort.asc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> thenByAdressServerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'adressServer', Sort.desc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> thenByEcranEnteteSetting() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecranEnteteSetting', Sort.asc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy>
      thenByEcranEnteteSettingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecranEnteteSetting', Sort.desc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> thenByEcranListMedia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecranListMedia', Sort.asc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> thenByEcranListMediaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecranListMedia', Sort.desc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> thenByEcranModeAppel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecranModeAppel', Sort.asc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> thenByEcranModeAppelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecranModeAppel', Sort.desc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> thenByEcranModeVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecranModeVideo', Sort.asc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> thenByEcranModeVideoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ecranModeVideo', Sort.desc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> thenByNomTv() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomTv', Sort.asc);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QAfterSortBy> thenByNomTvDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomTv', Sort.desc);
    });
  }
}

extension DataIsarQueryWhereDistinct
    on QueryBuilder<DataIsar, DataIsar, QDistinct> {
  QueryBuilder<DataIsar, DataIsar, QDistinct> distinctByAdressServer(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'adressServer', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DataIsar, DataIsar, QDistinct> distinctByEcranEnteteSetting() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ecranEnteteSetting');
    });
  }

  QueryBuilder<DataIsar, DataIsar, QDistinct> distinctByEcranListMedia() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ecranListMedia');
    });
  }

  QueryBuilder<DataIsar, DataIsar, QDistinct> distinctByEcranModeAppel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ecranModeAppel');
    });
  }

  QueryBuilder<DataIsar, DataIsar, QDistinct> distinctByEcranModeVideo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ecranModeVideo');
    });
  }

  QueryBuilder<DataIsar, DataIsar, QDistinct> distinctByNomTv(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nomTv', caseSensitive: caseSensitive);
    });
  }
}

extension DataIsarQueryProperty
    on QueryBuilder<DataIsar, DataIsar, QQueryProperty> {
  QueryBuilder<DataIsar, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DataIsar, String, QQueryOperations> adressServerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'adressServer');
    });
  }

  QueryBuilder<DataIsar, DateTime?, QQueryOperations>
      ecranEnteteSettingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ecranEnteteSetting');
    });
  }

  QueryBuilder<DataIsar, DateTime?, QQueryOperations> ecranListMediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ecranListMedia');
    });
  }

  QueryBuilder<DataIsar, DateTime?, QQueryOperations> ecranModeAppelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ecranModeAppel');
    });
  }

  QueryBuilder<DataIsar, DateTime?, QQueryOperations> ecranModeVideoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ecranModeVideo');
    });
  }

  QueryBuilder<DataIsar, String, QQueryOperations> nomTvProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nomTv');
    });
  }
}
