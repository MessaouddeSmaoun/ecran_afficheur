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
    r'colorText': PropertySchema(
      id: 0,
      name: r'colorText',
      type: IsarType.long,
    ),
    r'durerImage': PropertySchema(
      id: 1,
      name: r'durerImage',
      type: IsarType.long,
    ),
    r'isBold': PropertySchema(
      id: 2,
      name: r'isBold',
      type: IsarType.bool,
    ),
    r'isItalic': PropertySchema(
      id: 3,
      name: r'isItalic',
      type: IsarType.bool,
    ),
    r'isResteVisible': PropertySchema(
      id: 4,
      name: r'isResteVisible',
      type: IsarType.bool,
    ),
    r'isServiceVisible': PropertySchema(
      id: 5,
      name: r'isServiceVisible',
      type: IsarType.bool,
    ),
    r'listMedia': PropertySchema(
      id: 6,
      name: r'listMedia',
      type: IsarType.stringList,
    ),
    r'modeAffichageMultimedia': PropertySchema(
      id: 7,
      name: r'modeAffichageMultimedia',
      type: IsarType.string,
    ),
    r'positionAffichageService': PropertySchema(
      id: 8,
      name: r'positionAffichageService',
      type: IsarType.string,
    ),
    r'volume': PropertySchema(
      id: 9,
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
  writer.writeLong(offsets[0], object.colorText);
  writer.writeLong(offsets[1], object.durerImage);
  writer.writeBool(offsets[2], object.isBold);
  writer.writeBool(offsets[3], object.isItalic);
  writer.writeBool(offsets[4], object.isResteVisible);
  writer.writeBool(offsets[5], object.isServiceVisible);
  writer.writeStringList(offsets[6], object.listMedia);
  writer.writeString(offsets[7], object.modeAffichageMultimedia);
  writer.writeString(offsets[8], object.positionAffichageService);
  writer.writeString(offsets[9], object.volume);
}

ModalModeVideo _modalModeVideoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModalModeVideo(
    colorText: reader.readLong(offsets[0]),
    durerImage: reader.readLong(offsets[1]),
    isBold: reader.readBool(offsets[2]),
    isItalic: reader.readBool(offsets[3]),
    isResteVisible: reader.readBool(offsets[4]),
    isServiceVisible: reader.readBool(offsets[5]),
    listMedia: reader.readStringList(offsets[6]) ?? [],
    modeAffichageMultimedia: reader.readString(offsets[7]),
    positionAffichageService: reader.readString(offsets[8]),
    volume: reader.readString(offsets[9]),
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
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readBool(offset)) as P;
    case 6:
      return (reader.readStringList(offset) ?? []) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
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
      isBoldEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isBold',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterFilterCondition>
      isItalicEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isItalic',
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

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy> sortByIsItalic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isItalic', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      sortByIsItalicDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isItalic', Sort.desc);
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

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy> thenByIsItalic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isItalic', Sort.asc);
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QAfterSortBy>
      thenByIsItalicDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isItalic', Sort.desc);
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

  QueryBuilder<ModalModeVideo, ModalModeVideo, QDistinct> distinctByIsBold() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isBold');
    });
  }

  QueryBuilder<ModalModeVideo, ModalModeVideo, QDistinct> distinctByIsItalic() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isItalic');
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

  QueryBuilder<ModalModeVideo, bool, QQueryOperations> isBoldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isBold');
    });
  }

  QueryBuilder<ModalModeVideo, bool, QQueryOperations> isItalicProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isItalic');
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
    r'indexService': PropertySchema(
      id: 0,
      name: r'indexService',
      type: IsarType.int,
    ),
    r'nomArab': PropertySchema(
      id: 1,
      name: r'nomArab',
      type: IsarType.string,
    ),
    r'nomFrancais': PropertySchema(
      id: 2,
      name: r'nomFrancais',
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
  bytesCount += 3 + object.nomArab.length * 3;
  bytesCount += 3 + object.nomFrancais.length * 3;
  return bytesCount;
}

void _modalServiceEcranSerialize(
  ModalServiceEcran object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeInt(offsets[0], object.indexService);
  writer.writeString(offsets[1], object.nomArab);
  writer.writeString(offsets[2], object.nomFrancais);
}

ModalServiceEcran _modalServiceEcranDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModalServiceEcran(
    indexService: reader.readInt(offsets[0]),
    nomArab: reader.readString(offsets[1]),
    nomFrancais: reader.readString(offsets[2]),
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
      return (reader.readInt(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
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
      indexServiceEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'indexService',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      indexServiceGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'indexService',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      indexServiceLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'indexService',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      indexServiceBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'indexService',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomArabEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nomArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomArabGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nomArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomArabLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nomArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomArabBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nomArab',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomArabStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nomArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomArabEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nomArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomArabContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nomArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomArabMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nomArab',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomArabIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nomArab',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomArabIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nomArab',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomFrancaisEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nomFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomFrancaisGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nomFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomFrancaisLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nomFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomFrancaisBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nomFrancais',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomFrancaisStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nomFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomFrancaisEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nomFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomFrancaisContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nomFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomFrancaisMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nomFrancais',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomFrancaisIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nomFrancais',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterFilterCondition>
      nomFrancaisIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nomFrancais',
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
      sortByIndexService() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'indexService', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      sortByIndexServiceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'indexService', Sort.desc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      sortByNomArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomArab', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      sortByNomArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomArab', Sort.desc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      sortByNomFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomFrancais', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      sortByNomFrancaisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomFrancais', Sort.desc);
    });
  }
}

extension ModalServiceEcranQuerySortThenBy
    on QueryBuilder<ModalServiceEcran, ModalServiceEcran, QSortThenBy> {
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
      thenByIndexService() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'indexService', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByIndexServiceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'indexService', Sort.desc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByNomArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomArab', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByNomArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomArab', Sort.desc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByNomFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomFrancais', Sort.asc);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QAfterSortBy>
      thenByNomFrancaisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nomFrancais', Sort.desc);
    });
  }
}

extension ModalServiceEcranQueryWhereDistinct
    on QueryBuilder<ModalServiceEcran, ModalServiceEcran, QDistinct> {
  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QDistinct>
      distinctByIndexService() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'indexService');
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QDistinct>
      distinctByNomArab({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nomArab', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ModalServiceEcran, ModalServiceEcran, QDistinct>
      distinctByNomFrancais({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nomFrancais', caseSensitive: caseSensitive);
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

  QueryBuilder<ModalServiceEcran, int, QQueryOperations>
      indexServiceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'indexService');
    });
  }

  QueryBuilder<ModalServiceEcran, String, QQueryOperations> nomArabProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nomArab');
    });
  }

  QueryBuilder<ModalServiceEcran, String, QQueryOperations>
      nomFrancaisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nomFrancais');
    });
  }
}
