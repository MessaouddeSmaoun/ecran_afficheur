// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modal_mode_video.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetModalModeVideoCollection on Isar {
  IsarCollection<ModalModeVideo> get modalModeVideos => this.collection();
}

const ModalModeVideoSchema = CollectionSchema(
  name: r'ModalModeVideo',
  id: 2492158116957034214,
  properties: {
    r'coleurGuichetMV': PropertySchema(
      id: 0,
      name: r'coleurGuichetMV',
      type: IsarType.long,
    ),
    r'coleurNumeroMV': PropertySchema(
      id: 1,
      name: r'coleurNumeroMV',
      type: IsarType.long,
    ),
    r'colorText': PropertySchema(
      id: 2,
      name: r'colorText',
      type: IsarType.long,
    ),
    r'durerImage': PropertySchema(
      id: 3,
      name: r'durerImage',
      type: IsarType.long,
    ),
    r'fontArabServiceMV': PropertySchema(
      id: 4,
      name: r'fontArabServiceMV',
      type: IsarType.string,
    ),
    r'fontFrancaisServiceMV': PropertySchema(
      id: 5,
      name: r'fontFrancaisServiceMV',
      type: IsarType.string,
    ),
    r'isBandeNumeroVisible': PropertySchema(
      id: 6,
      name: r'isBandeNumeroVisible',
      type: IsarType.bool,
    ),
    r'isBold': PropertySchema(
      id: 7,
      name: r'isBold',
      type: IsarType.bool,
    ),
    r'isResteVisible': PropertySchema(
      id: 8,
      name: r'isResteVisible',
      type: IsarType.bool,
    ),
    r'isServiceVisible': PropertySchema(
      id: 9,
      name: r'isServiceVisible',
      type: IsarType.bool,
    ),
    r'listMedia': PropertySchema(
      id: 10,
      name: r'listMedia',
      type: IsarType.stringList,
    ),
    r'modeAffichageMultimedia': PropertySchema(
      id: 11,
      name: r'modeAffichageMultimedia',
      type: IsarType.string,
    ),
    r'positionAffichageService': PropertySchema(
      id: 12,
      name: r'positionAffichageService',
      type: IsarType.string,
    ),
    r'volume': PropertySchema(
      id: 13,
      name: r'volume',
      type: IsarType.string,
    )
  },
  estimateSize: _modalModeVideoEstimateSize,
  serialize: _modalModeVideoSerialize,
  deserialize: _modalModeVideoDeserialize,
  deserializeProp: _modalModeVideoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'listService': LinkSchema(
      id: 6537145712225905762,
      name: r'listService',
      target: r'ModalServiceEcran',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _modalModeVideoGetId,
  getLinks: _modalModeVideoGetLinks,
  attach: _modalModeVideoAttach,
  version: '3.1.0+1',
);

int _modalModeVideoEstimateSize(
  ModalModeVideo object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.fontArabServiceMV.length * 3;
  bytesCount += 3 + object.fontFrancaisServiceMV.length * 3;
  bytesCount += 3 + object.listMedia.length * 3;
  {
    for (var i = 0; i < object.listMedia.length; i++) {
      final value = object.listMedia[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.modeAffichageMultimedia.length * 3;
  bytesCount += 3 + object.positionAffichageService.length * 3;
  bytesCount += 3 + object.volume.length * 3;
  return bytesCount;
}

void _modalModeVideoSerialize(
  ModalModeVideo object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.coleurGuichetMV);
  writer.writeLong(offsets[1], object.coleurNumeroMV);
  writer.writeLong(offsets[2], object.colorText);
  writer.writeLong(offsets[3], object.durerImage);
  writer.writeString(offsets[4], object.fontArabServiceMV);
  writer.writeString(offsets[5], object.fontFrancaisServiceMV);
  writer.writeBool(offsets[6], object.isBandeNumeroVisible);
  writer.writeBool(offsets[7], object.isBold);
  writer.writeBool(offsets[8], object.isResteVisible);
  writer.writeBool(offsets[9], object.isServiceVisible);
  writer.writeStringList(offsets[10], object.listMedia);
  writer.writeString(offsets[11], object.modeAffichageMultimedia);
  writer.writeString(offsets[12], object.positionAffichageService);
  writer.writeString(offsets[13], object.volume);
}

ModalModeVideo _modalModeVideoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModalModeVideo(
    coleurGuichetMV: reader.readLong(offsets[0]),
    coleurNumeroMV: reader.readLong(offsets[1]),
    colorText: reader.readLong(offsets[2]),
    durerImage: reader.readLong(offsets[3]),
    fontArabServiceMV: reader.readString(offsets[4]),
    fontFrancaisServiceMV: reader.readString(offsets[5]),
    isBandeNumeroVisible: reader.readBool(offsets[6]),
    isBold: reader.readBool(offsets[7]),
    isResteVisible: reader.readBool(offsets[8]),
    isServiceVisible: reader.readBool(offsets[9]),
    listMedia: reader.readStringList(offsets[10]) ?? [],
    modeAffichageMultimedia: reader.readString(offsets[11]),
    positionAffichageService: reader.readString(offsets[12]),
    volume: reader.readString(offsets[13]),
  );
  object.id = id;
  return object;
}

P _modalModeVideoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readBool(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (reader.readBool(offset)) as P;
    case 10:
      return (reader.readStringList(offset) ?? []) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _modalModeVideoGetId(ModalModeVideo object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _modalModeVideoGetLinks(ModalModeVideo object) {
  return [object.listService];
}

void _modalModeVideoAttach(
    IsarCollection<dynamic> col, Id id, ModalModeVideo object) {
  object.id = id;
  object.listService.attach(
      col, col.isar.collection<ModalServiceEcran>(), r'listService', id);
}

extension ModalModeVideoQueryWhereSort
    on QueryBuilder<ModalModeVideo, ModalModeVideo, QWhere> {
  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ModalModeVideoQueryWhere
    on QueryBuilder<ModalModeVideo, ModalModeVideo, QWhereClause> {
  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterWhereClause> idBetween(
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

extension ModalModeVideoQueryFilter
    on QueryBuilder<ModalModeVideo, ModalModeVideo, QFilterCondition> {
  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      coleurGuichetMVEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'coleurGuichetMV',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      coleurGuichetMVGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'coleurGuichetMV',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      coleurGuichetMVLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'coleurGuichetMV',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      coleurGuichetMVBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'coleurGuichetMV',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      coleurNumeroMVEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'coleurNumeroMV',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      coleurNumeroMVGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'coleurNumeroMV',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      coleurNumeroMVLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'coleurNumeroMV',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      coleurNumeroMVBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'coleurNumeroMV',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      colorTextEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorText',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      colorTextGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colorText',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      colorTextLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colorText',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      colorTextBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colorText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      durerImageEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'durerImage',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      durerImageGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'durerImage',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      durerImageLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'durerImage',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      durerImageBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'durerImage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontArabServiceMVEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fontArabServiceMV',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontArabServiceMVGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fontArabServiceMV',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontArabServiceMVLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fontArabServiceMV',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontArabServiceMVBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fontArabServiceMV',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontArabServiceMVStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fontArabServiceMV',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontArabServiceMVEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fontArabServiceMV',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontArabServiceMVContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fontArabServiceMV',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontArabServiceMVMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fontArabServiceMV',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontArabServiceMVIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fontArabServiceMV',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontArabServiceMVIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fontArabServiceMV',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontFrancaisServiceMVEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fontFrancaisServiceMV',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontFrancaisServiceMVGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fontFrancaisServiceMV',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontFrancaisServiceMVLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fontFrancaisServiceMV',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontFrancaisServiceMVBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fontFrancaisServiceMV',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontFrancaisServiceMVStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fontFrancaisServiceMV',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontFrancaisServiceMVEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fontFrancaisServiceMV',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontFrancaisServiceMVContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fontFrancaisServiceMV',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontFrancaisServiceMVMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fontFrancaisServiceMV',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontFrancaisServiceMVIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fontFrancaisServiceMV',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      fontFrancaisServiceMVIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fontFrancaisServiceMV',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
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

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
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

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      isBandeNumeroVisibleEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isBandeNumeroVisible',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      isBoldEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isBold',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      isResteVisibleEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isResteVisible',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      isServiceVisibleEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isServiceVisible',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listMediaElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'listMedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listMediaElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'listMedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listMediaElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'listMedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listMediaElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'listMedia',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listMediaElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'listMedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listMediaElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'listMedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listMediaElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'listMedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listMediaElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'listMedia',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listMediaElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'listMedia',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listMediaElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'listMedia',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listMediaLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listMedia',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listMediaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listMedia',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listMediaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listMedia',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listMediaLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listMedia',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listMediaLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listMedia',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listMediaLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'listMedia',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      modeAffichageMultimediaEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modeAffichageMultimedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      modeAffichageMultimediaGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'modeAffichageMultimedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      modeAffichageMultimediaLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'modeAffichageMultimedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      modeAffichageMultimediaBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'modeAffichageMultimedia',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      modeAffichageMultimediaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'modeAffichageMultimedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      modeAffichageMultimediaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'modeAffichageMultimedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      modeAffichageMultimediaContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'modeAffichageMultimedia',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      modeAffichageMultimediaMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'modeAffichageMultimedia',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      modeAffichageMultimediaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modeAffichageMultimedia',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      modeAffichageMultimediaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'modeAffichageMultimedia',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      positionAffichageServiceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'positionAffichageService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      positionAffichageServiceGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'positionAffichageService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      positionAffichageServiceLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'positionAffichageService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      positionAffichageServiceBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'positionAffichageService',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      positionAffichageServiceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'positionAffichageService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      positionAffichageServiceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'positionAffichageService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      positionAffichageServiceContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'positionAffichageService',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      positionAffichageServiceMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'positionAffichageService',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      positionAffichageServiceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'positionAffichageService',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      positionAffichageServiceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'positionAffichageService',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      volumeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'volume',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      volumeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'volume',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      volumeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'volume',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      volumeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'volume',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      volumeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'volume',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      volumeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'volume',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      volumeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'volume',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      volumeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'volume',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      volumeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'volume',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      volumeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'volume',
        value: '',
      ));
    });
  }
}

extension ModalModeVideoQueryObject
    on QueryBuilder<ModalModeVideo, ModalModeVideo, QFilterCondition> {}

extension ModalModeVideoQueryLinks
    on QueryBuilder<ModalModeVideo, ModalModeVideo, QFilterCondition> {
  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listService(FilterQuery<ModalServiceEcran> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'listService');
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listServiceLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'listService', length, true, length, true);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listServiceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'listService', 0, true, 0, true);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listServiceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'listService', 0, false, 999999, true);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listServiceLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'listService', 0, true, length, include);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listServiceLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'listService', length, include, 999999, true);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      listServiceLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'listService', lower, includeLower, upper, includeUpper);
    });
  }
}

extension ModalModeVideoQuerySortBy
    on QueryBuilder<ModalModeVideo, ModalModeVideo, QSortBy> {
  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByColeurGuichetMV() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coleurGuichetMV', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByColeurGuichetMVDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coleurGuichetMV', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByColeurNumeroMV() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coleurNumeroMV', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByColeurNumeroMVDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coleurNumeroMV', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy> sortByColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorText', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByColorTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorText', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByDurerImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durerImage', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByDurerImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durerImage', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByFontArabServiceMV() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontArabServiceMV', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByFontArabServiceMVDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontArabServiceMV', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByFontFrancaisServiceMV() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontFrancaisServiceMV', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByFontFrancaisServiceMVDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontFrancaisServiceMV', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByIsBandeNumeroVisible() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBandeNumeroVisible', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByIsBandeNumeroVisibleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBandeNumeroVisible', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy> sortByIsBold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBold', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByIsBoldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBold', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByIsResteVisible() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isResteVisible', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByIsResteVisibleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isResteVisible', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByIsServiceVisible() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isServiceVisible', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByIsServiceVisibleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isServiceVisible', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByModeAffichageMultimedia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modeAffichageMultimedia', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByModeAffichageMultimediaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modeAffichageMultimedia', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByPositionAffichageService() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'positionAffichageService', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByPositionAffichageServiceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'positionAffichageService', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy> sortByVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'volume', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByVolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'volume', Sort.desc);
    });
  }
}

extension ModalModeVideoQuerySortThenBy
    on QueryBuilder<ModalModeVideo, ModalModeVideo, QSortThenBy> {
  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByColeurGuichetMV() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coleurGuichetMV', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByColeurGuichetMVDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coleurGuichetMV', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByColeurNumeroMV() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coleurNumeroMV', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByColeurNumeroMVDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coleurNumeroMV', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy> thenByColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorText', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByColorTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorText', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByDurerImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durerImage', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByDurerImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'durerImage', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByFontArabServiceMV() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontArabServiceMV', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByFontArabServiceMVDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontArabServiceMV', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByFontFrancaisServiceMV() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontFrancaisServiceMV', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByFontFrancaisServiceMVDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontFrancaisServiceMV', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByIsBandeNumeroVisible() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBandeNumeroVisible', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByIsBandeNumeroVisibleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBandeNumeroVisible', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy> thenByIsBold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBold', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByIsBoldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBold', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByIsResteVisible() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isResteVisible', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByIsResteVisibleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isResteVisible', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByIsServiceVisible() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isServiceVisible', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByIsServiceVisibleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isServiceVisible', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByModeAffichageMultimedia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modeAffichageMultimedia', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByModeAffichageMultimediaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modeAffichageMultimedia', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByPositionAffichageService() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'positionAffichageService', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByPositionAffichageServiceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'positionAffichageService', Sort.desc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy> thenByVolume() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'volume', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByVolumeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'volume', Sort.desc);
    });
  }
}

extension ModalModeVideoQueryWhereDistinct
    on QueryBuilder<ModalModeVideo, ModalModeVideo, QDistinct> {
  QueryBuilder<ModalModeVideo, ModalModeVideo, QDistinct>
      distinctByColeurGuichetMV() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'coleurGuichetMV');
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QDistinct>
      distinctByColeurNumeroMV() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'coleurNumeroMV');
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QDistinct>
      distinctByColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'colorText');
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QDistinct>
      distinctByDurerImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'durerImage');
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QDistinct>
      distinctByFontArabServiceMV({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fontArabServiceMV',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QDistinct>
      distinctByFontFrancaisServiceMV({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fontFrancaisServiceMV',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QDistinct>
      distinctByIsBandeNumeroVisible() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isBandeNumeroVisible');
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QDistinct> distinctByIsBold() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isBold');
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QDistinct>
      distinctByIsResteVisible() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isResteVisible');
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QDistinct>
      distinctByIsServiceVisible() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isServiceVisible');
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QDistinct>
      distinctByListMedia() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'listMedia');
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QDistinct>
      distinctByModeAffichageMultimedia({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'modeAffichageMultimedia',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QDistinct>
      distinctByPositionAffichageService({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'positionAffichageService',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QDistinct> distinctByVolume(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'volume', caseSensitive: caseSensitive);
    });
  }
}

extension ModalModeVideoQueryProperty
    on QueryBuilder<ModalModeVideo, ModalModeVideo, QQueryProperty> {
  QueryBuilder<ModalModeVideo, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ModalModeVideo, int, QQueryOperations>
      coleurGuichetMVProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'coleurGuichetMV');
    });
  }

  QueryBuilder<ModalModeVideo, int, QQueryOperations> coleurNumeroMVProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'coleurNumeroMV');
    });
  }

  QueryBuilder<ModalModeVideo, int, QQueryOperations> colorTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colorText');
    });
  }

  QueryBuilder<ModalModeVideo, int, QQueryOperations> durerImageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'durerImage');
    });
  }

  QueryBuilder<ModalModeVideo, String, QQueryOperations>
      fontArabServiceMVProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fontArabServiceMV');
    });
  }

  QueryBuilder<ModalModeVideo, String, QQueryOperations>
      fontFrancaisServiceMVProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fontFrancaisServiceMV');
    });
  }

  QueryBuilder<ModalModeVideo, bool, QQueryOperations>
      isBandeNumeroVisibleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isBandeNumeroVisible');
    });
  }

  QueryBuilder<ModalModeVideo, bool, QQueryOperations> isBoldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isBold');
    });
  }

  QueryBuilder<ModalModeVideo, bool, QQueryOperations>
      isResteVisibleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isResteVisible');
    });
  }

  QueryBuilder<ModalModeVideo, bool, QQueryOperations>
      isServiceVisibleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isServiceVisible');
    });
  }

  QueryBuilder<ModalModeVideo, List<String>, QQueryOperations>
      listMediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'listMedia');
    });
  }

  QueryBuilder<ModalModeVideo, String, QQueryOperations>
      modeAffichageMultimediaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'modeAffichageMultimedia');
    });
  }

  QueryBuilder<ModalModeVideo, String, QQueryOperations>
      positionAffichageServiceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'positionAffichageService');
    });
  }

  QueryBuilder<ModalModeVideo, String, QQueryOperations> volumeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'volume');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetModalServiceEcranCollection on Isar {
  IsarCollection<ModalServiceEcran> get modalServiceEcrans => this.collection();
}

const ModalServiceEcranSchema = CollectionSchema(
  name: r'ModalServiceEcran',
  id: 7465933031142721967,
  properties: {
    r'appeler': PropertySchema(
      id: 0,
      name: r'appeler',
      type: IsarType.string,
    ),
    r'guichet': PropertySchema(
      id: 1,
      name: r'guichet',
      type: IsarType.string,
    ),
    r'index': PropertySchema(
      id: 2,
      name: r'index',
      type: IsarType.long,
    ),
    r'reste': PropertySchema(
      id: 3,
      name: r'reste',
      type: IsarType.string,
    ),
    r'serviceAr': PropertySchema(
      id: 4,
      name: r'serviceAr',
      type: IsarType.string,
    ),
    r'serviceFr': PropertySchema(
      id: 5,
      name: r'serviceFr',
      type: IsarType.string,
    )
  },
  estimateSize: _modalServiceEcranEstimateSize,
  serialize: _modalServiceEcranSerialize,
  deserialize: _modalServiceEcranDeserialize,
  deserializeProp: _modalServiceEcranDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _modalServiceEcranGetId,
  getLinks: _modalServiceEcranGetLinks,
  attach: _modalServiceEcranAttach,
  version: '3.1.0+1',
);

int _modalServiceEcranEstimateSize(
  ModalServiceEcran object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.appeler.length * 3;
  bytesCount += 3 + object.guichet.length * 3;
  bytesCount += 3 + object.reste.length * 3;
  bytesCount += 3 + object.serviceAr.length * 3;
  bytesCount += 3 + object.serviceFr.length * 3;
  return bytesCount;
}

void _modalServiceEcranSerialize(
  ModalServiceEcran object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.appeler);
  writer.writeString(offsets[1], object.guichet);
  writer.writeLong(offsets[2], object.index);
  writer.writeString(offsets[3], object.reste);
  writer.writeString(offsets[4], object.serviceAr);
  writer.writeString(offsets[5], object.serviceFr);
}

ModalServiceEcran _modalServiceEcranDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModalServiceEcran(
    appeler: reader.readString(offsets[0]),
    guichet: reader.readString(offsets[1]),
    index: reader.readLong(offsets[2]),
    reste: reader.readString(offsets[3]),
    serviceAr: reader.readString(offsets[4]),
    serviceFr: reader.readString(offsets[5]),
  );
  object.id = id;
  return object;
}

P _modalServiceEcranDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _modalServiceEcranGetId(ModalServiceEcran object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _modalServiceEcranGetLinks(
    ModalServiceEcran object) {
  return [];
}

void _modalServiceEcranAttach(
    IsarCollection<dynamic> col, Id id, ModalServiceEcran object) {
  object.id = id;
}

extension ModalServiceEcranQueryWhereSort
    on QueryBuilder<ModalServiceEcran, ModalServiceEcran, QWhere> {
  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ModalServiceEcranQueryWhere
    on QueryBuilder<ModalServiceEcran, ModalServiceEcran, QWhereClause> {
  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterWhereClause>
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

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterWhereClause>
      idBetween(
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

extension ModalServiceEcranQueryFilter
    on QueryBuilder<ModalServiceEcran, ModalServiceEcran, QFilterCondition> {
  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      appelerEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appeler',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      appelerGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'appeler',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      appelerLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'appeler',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      appelerBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'appeler',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      appelerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'appeler',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      appelerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'appeler',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      appelerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'appeler',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      appelerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'appeler',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      appelerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'appeler',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      appelerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'appeler',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      guichetEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guichet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      guichetGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'guichet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      guichetLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'guichet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      guichetBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'guichet',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      guichetStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'guichet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      guichetEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'guichet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      guichetContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'guichet',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      guichetMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'guichet',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      guichetIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guichet',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      guichetIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'guichet',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
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

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
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

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
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

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      indexEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'index',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      indexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'index',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      indexLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'index',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      indexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'index',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      resteEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reste',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      resteGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reste',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      resteLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reste',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      resteBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reste',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      resteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reste',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      resteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reste',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      resteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reste',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      resteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reste',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      resteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reste',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      resteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reste',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceArEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceArGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serviceAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceArLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serviceAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceArBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serviceAr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceArStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'serviceAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceArEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'serviceAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceArContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'serviceAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceArMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'serviceAr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceArIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceAr',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceArIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serviceAr',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceFrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceFrGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serviceFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceFrLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serviceFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceFrBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serviceFr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceFrStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'serviceFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceFrEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'serviceFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceFrContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'serviceFr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceFrMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'serviceFr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceFrIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceFr',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      serviceFrIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'serviceFr',
        value: '',
      ));
    });
  }
}

extension ModalServiceEcranQueryObject
    on QueryBuilder<ModalServiceEcran, ModalServiceEcran, QFilterCondition> {}

extension ModalServiceEcranQueryLinks
    on QueryBuilder<ModalServiceEcran, ModalServiceEcran, QFilterCondition> {}

extension ModalServiceEcranQuerySortBy
    on QueryBuilder<ModalServiceEcran, ModalServiceEcran, QSortBy> {
  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      sortByAppeler() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appeler', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      sortByAppelerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appeler', Sort.desc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      sortByGuichet() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichet', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      sortByGuichetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichet', Sort.desc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      sortByIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'index', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      sortByIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'index', Sort.desc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      sortByReste() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reste', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      sortByResteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reste', Sort.desc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      sortByServiceAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceAr', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      sortByServiceArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceAr', Sort.desc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      sortByServiceFr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceFr', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      sortByServiceFrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceFr', Sort.desc);
    });
  }
}

extension ModalServiceEcranQuerySortThenBy
    on QueryBuilder<ModalServiceEcran, ModalServiceEcran, QSortThenBy> {
  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByAppeler() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appeler', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByAppelerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'appeler', Sort.desc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByGuichet() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichet', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByGuichetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichet', Sort.desc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'index', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByIndexDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'index', Sort.desc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByReste() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reste', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByResteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reste', Sort.desc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByServiceAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceAr', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByServiceArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceAr', Sort.desc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByServiceFr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceFr', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByServiceFrDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceFr', Sort.desc);
    });
  }
}

extension ModalServiceEcranQueryWhereDistinct
    on QueryBuilder<ModalServiceEcran, ModalServiceEcran, QDistinct> {
  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QDistinct>
      distinctByAppeler({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'appeler', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QDistinct>
      distinctByGuichet({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'guichet', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QDistinct>
      distinctByIndex() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'index');
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QDistinct> distinctByReste(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reste', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QDistinct>
      distinctByServiceAr({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serviceAr', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QDistinct>
      distinctByServiceFr({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serviceFr', caseSensitive: caseSensitive);
    });
  }
}

extension ModalServiceEcranQueryProperty
    on QueryBuilder<ModalServiceEcran, ModalServiceEcran, QQueryProperty> {
  QueryBuilder<ModalServiceEcran, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ModalServiceEcran, String, QQueryOperations> appelerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'appeler');
    });
  }

  QueryBuilder<ModalServiceEcran, String, QQueryOperations> guichetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'guichet');
    });
  }

  QueryBuilder<ModalServiceEcran, int, QQueryOperations> indexProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'index');
    });
  }

  QueryBuilder<ModalServiceEcran, String, QQueryOperations> resteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reste');
    });
  }

  QueryBuilder<ModalServiceEcran, String, QQueryOperations>
      serviceArProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serviceAr');
    });
  }

  QueryBuilder<ModalServiceEcran, String, QQueryOperations>
      serviceFrProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serviceFr');
    });
  }
}
