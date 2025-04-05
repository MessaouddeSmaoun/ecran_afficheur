// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modal_entete_ecran.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetModalEnteteEcranCollection on Isar {
  IsarCollection<ModalEnteteEcran> get modalEnteteEcrans => this.collection();
}

const ModalEnteteEcranSchema = CollectionSchema(
  name: r'ModalEnteteEcran',
  id: -5458298868325532365,
  properties: {
    r'colorDateHorloge': PropertySchema(
      id: 0,
      name: r'colorDateHorloge',
      type: IsarType.long,
    ),
    r'colorFond': PropertySchema(
      id: 1,
      name: r'colorFond',
      type: IsarType.long,
    ),
    r'colorIcon': PropertySchema(
      id: 2,
      name: r'colorIcon',
      type: IsarType.long,
    ),
    r'colorTextArab': PropertySchema(
      id: 3,
      name: r'colorTextArab',
      type: IsarType.long,
    ),
    r'colorTextFrancais': PropertySchema(
      id: 4,
      name: r'colorTextFrancais',
      type: IsarType.long,
    ),
    r'delayAttenteVocal': PropertySchema(
      id: 5,
      name: r'delayAttenteVocal',
      type: IsarType.long,
    ),
    r'delayChange': PropertySchema(
      id: 6,
      name: r'delayChange',
      type: IsarType.long,
    ),
    r'enteteArab': PropertySchema(
      id: 7,
      name: r'enteteArab',
      type: IsarType.string,
    ),
    r'enteteFrancais': PropertySchema(
      id: 8,
      name: r'enteteFrancais',
      type: IsarType.string,
    ),
    r'fontArab': PropertySchema(
      id: 9,
      name: r'fontArab',
      type: IsarType.string,
    ),
    r'fontFrancais': PropertySchema(
      id: 10,
      name: r'fontFrancais',
      type: IsarType.string,
    ),
    r'isArab': PropertySchema(
      id: 11,
      name: r'isArab',
      type: IsarType.bool,
    ),
    r'isBoldArab': PropertySchema(
      id: 12,
      name: r'isBoldArab',
      type: IsarType.bool,
    ),
    r'isBoldFrancais': PropertySchema(
      id: 13,
      name: r'isBoldFrancais',
      type: IsarType.bool,
    ),
    r'isDateHorloge': PropertySchema(
      id: 14,
      name: r'isDateHorloge',
      type: IsarType.bool,
    ),
    r'isFondImage': PropertySchema(
      id: 15,
      name: r'isFondImage',
      type: IsarType.bool,
    ),
    r'isFrancais': PropertySchema(
      id: 16,
      name: r'isFrancais',
      type: IsarType.bool,
    ),
    r'isIconLeft': PropertySchema(
      id: 17,
      name: r'isIconLeft',
      type: IsarType.bool,
    ),
    r'isIconRight': PropertySchema(
      id: 18,
      name: r'isIconRight',
      type: IsarType.bool,
    ),
    r'isItalicArab': PropertySchema(
      id: 19,
      name: r'isItalicArab',
      type: IsarType.bool,
    ),
    r'isItalicFrancais': PropertySchema(
      id: 20,
      name: r'isItalicFrancais',
      type: IsarType.bool,
    )
  },
  estimateSize: _modalEnteteEcranEstimateSize,
  serialize: _modalEnteteEcranSerialize,
  deserialize: _modalEnteteEcranDeserialize,
  deserializeProp: _modalEnteteEcranDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _modalEnteteEcranGetId,
  getLinks: _modalEnteteEcranGetLinks,
  attach: _modalEnteteEcranAttach,
  version: '3.1.0+1',
);

int _modalEnteteEcranEstimateSize(
  ModalEnteteEcran object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.enteteArab.length * 3;
  bytesCount += 3 + object.enteteFrancais.length * 3;
  bytesCount += 3 + object.fontArab.length * 3;
  bytesCount += 3 + object.fontFrancais.length * 3;
  return bytesCount;
}

void _modalEnteteEcranSerialize(
  ModalEnteteEcran object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.colorDateHorloge);
  writer.writeLong(offsets[1], object.colorFond);
  writer.writeLong(offsets[2], object.colorIcon);
  writer.writeLong(offsets[3], object.colorTextArab);
  writer.writeLong(offsets[4], object.colorTextFrancais);
  writer.writeLong(offsets[5], object.delayAttenteVocal);
  writer.writeLong(offsets[6], object.delayChange);
  writer.writeString(offsets[7], object.enteteArab);
  writer.writeString(offsets[8], object.enteteFrancais);
  writer.writeString(offsets[9], object.fontArab);
  writer.writeString(offsets[10], object.fontFrancais);
  writer.writeBool(offsets[11], object.isArab);
  writer.writeBool(offsets[12], object.isBoldArab);
  writer.writeBool(offsets[13], object.isBoldFrancais);
  writer.writeBool(offsets[14], object.isDateHorloge);
  writer.writeBool(offsets[15], object.isFondImage);
  writer.writeBool(offsets[16], object.isFrancais);
  writer.writeBool(offsets[17], object.isIconLeft);
  writer.writeBool(offsets[18], object.isIconRight);
  writer.writeBool(offsets[19], object.isItalicArab);
  writer.writeBool(offsets[20], object.isItalicFrancais);
}

ModalEnteteEcran _modalEnteteEcranDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModalEnteteEcran(
    colorDateHorloge: reader.readLong(offsets[0]),
    colorFond: reader.readLong(offsets[1]),
    colorIcon: reader.readLong(offsets[2]),
    colorTextArab: reader.readLong(offsets[3]),
    colorTextFrancais: reader.readLong(offsets[4]),
    delayAttenteVocal: reader.readLong(offsets[5]),
    delayChange: reader.readLong(offsets[6]),
    enteteArab: reader.readString(offsets[7]),
    enteteFrancais: reader.readString(offsets[8]),
    fontArab: reader.readString(offsets[9]),
    fontFrancais: reader.readString(offsets[10]),
    isArab: reader.readBool(offsets[11]),
    isBoldArab: reader.readBool(offsets[12]),
    isBoldFrancais: reader.readBool(offsets[13]),
    isDateHorloge: reader.readBool(offsets[14]),
    isFondImage: reader.readBool(offsets[15]),
    isFrancais: reader.readBool(offsets[16]),
    isIconLeft: reader.readBool(offsets[17]),
    isIconRight: reader.readBool(offsets[18]),
    isItalicArab: reader.readBool(offsets[19]),
    isItalicFrancais: reader.readBool(offsets[20]),
  );
  object.id = id;
  return object;
}

P _modalEnteteEcranDeserializeProp<P>(
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
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readBool(offset)) as P;
    case 12:
      return (reader.readBool(offset)) as P;
    case 13:
      return (reader.readBool(offset)) as P;
    case 14:
      return (reader.readBool(offset)) as P;
    case 15:
      return (reader.readBool(offset)) as P;
    case 16:
      return (reader.readBool(offset)) as P;
    case 17:
      return (reader.readBool(offset)) as P;
    case 18:
      return (reader.readBool(offset)) as P;
    case 19:
      return (reader.readBool(offset)) as P;
    case 20:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _modalEnteteEcranGetId(ModalEnteteEcran object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _modalEnteteEcranGetLinks(ModalEnteteEcran object) {
  return [];
}

void _modalEnteteEcranAttach(
    IsarCollection<dynamic> col, Id id, ModalEnteteEcran object) {
  object.id = id;
}

extension ModalEnteteEcranQueryWhereSort
    on QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QWhere> {
  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ModalEnteteEcranQueryWhere
    on QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QWhereClause> {
  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterWhereClause>
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

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterWhereClause> idBetween(
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

extension ModalEnteteEcranQueryFilter
    on QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QFilterCondition> {
  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorDateHorlogeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorDateHorloge',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorDateHorlogeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colorDateHorloge',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorDateHorlogeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colorDateHorloge',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorDateHorlogeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colorDateHorloge',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorFondEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorFond',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorFondGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colorFond',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorFondLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colorFond',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorFondBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colorFond',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorIconEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorIcon',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorIconGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colorIcon',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorIconLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colorIcon',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorIconBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colorIcon',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorTextArabEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorTextArab',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorTextArabGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colorTextArab',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorTextArabLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colorTextArab',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorTextArabBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colorTextArab',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorTextFrancaisEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'colorTextFrancais',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorTextFrancaisGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'colorTextFrancais',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorTextFrancaisLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'colorTextFrancais',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      colorTextFrancaisBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'colorTextFrancais',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      delayAttenteVocalEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'delayAttenteVocal',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      delayAttenteVocalGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'delayAttenteVocal',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      delayAttenteVocalLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'delayAttenteVocal',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      delayAttenteVocalBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'delayAttenteVocal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      delayChangeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'delayChange',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      delayChangeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'delayChange',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      delayChangeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'delayChange',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      delayChangeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'delayChange',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteArabEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enteteArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteArabGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'enteteArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteArabLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'enteteArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteArabBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'enteteArab',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteArabStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'enteteArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteArabEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'enteteArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteArabContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'enteteArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteArabMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'enteteArab',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteArabIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enteteArab',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteArabIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'enteteArab',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteFrancaisEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enteteFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteFrancaisGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'enteteFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteFrancaisLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'enteteFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteFrancaisBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'enteteFrancais',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteFrancaisStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'enteteFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteFrancaisEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'enteteFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteFrancaisContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'enteteFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteFrancaisMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'enteteFrancais',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteFrancaisIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enteteFrancais',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      enteteFrancaisIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'enteteFrancais',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontArabEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fontArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontArabGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fontArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontArabLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fontArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontArabBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fontArab',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontArabStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fontArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontArabEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fontArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontArabContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fontArab',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontArabMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fontArab',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontArabIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fontArab',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontArabIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fontArab',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontFrancaisEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fontFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontFrancaisGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fontFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontFrancaisLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fontFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontFrancaisBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fontFrancais',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontFrancaisStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fontFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontFrancaisEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fontFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontFrancaisContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fontFrancais',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontFrancaisMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fontFrancais',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontFrancaisIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fontFrancais',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      fontFrancaisIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fontFrancais',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
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

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
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

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
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

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      isArabEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isArab',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      isBoldArabEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isBoldArab',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      isBoldFrancaisEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isBoldFrancais',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      isDateHorlogeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDateHorloge',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      isFondImageEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFondImage',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      isFrancaisEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFrancais',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      isIconLeftEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isIconLeft',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      isIconRightEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isIconRight',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      isItalicArabEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isItalicArab',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterFilterCondition>
      isItalicFrancaisEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isItalicFrancais',
        value: value,
      ));
    });
  }
}

extension ModalEnteteEcranQueryObject
    on QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QFilterCondition> {}

extension ModalEnteteEcranQueryLinks
    on QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QFilterCondition> {}

extension ModalEnteteEcranQuerySortBy
    on QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QSortBy> {
  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByColorDateHorloge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorDateHorloge', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByColorDateHorlogeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorDateHorloge', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByColorFond() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorFond', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByColorFondDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorFond', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByColorIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorIcon', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByColorIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorIcon', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByColorTextArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorTextArab', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByColorTextArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorTextArab', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByColorTextFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorTextFrancais', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByColorTextFrancaisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorTextFrancais', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByDelayAttenteVocal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delayAttenteVocal', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByDelayAttenteVocalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delayAttenteVocal', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByDelayChange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delayChange', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByDelayChangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delayChange', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByEnteteArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enteteArab', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByEnteteArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enteteArab', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByEnteteFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enteteFrancais', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByEnteteFrancaisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enteteFrancais', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByFontArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontArab', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByFontArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontArab', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByFontFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontFrancais', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByFontFrancaisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontFrancais', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isArab', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isArab', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsBoldArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBoldArab', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsBoldArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBoldArab', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsBoldFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBoldFrancais', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsBoldFrancaisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBoldFrancais', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsDateHorloge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDateHorloge', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsDateHorlogeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDateHorloge', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsFondImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFondImage', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsFondImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFondImage', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFrancais', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsFrancaisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFrancais', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsIconLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isIconLeft', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsIconLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isIconLeft', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsIconRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isIconRight', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsIconRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isIconRight', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsItalicArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isItalicArab', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsItalicArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isItalicArab', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsItalicFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isItalicFrancais', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      sortByIsItalicFrancaisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isItalicFrancais', Sort.desc);
    });
  }
}

extension ModalEnteteEcranQuerySortThenBy
    on QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QSortThenBy> {
  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByColorDateHorloge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorDateHorloge', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByColorDateHorlogeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorDateHorloge', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByColorFond() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorFond', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByColorFondDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorFond', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByColorIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorIcon', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByColorIconDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorIcon', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByColorTextArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorTextArab', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByColorTextArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorTextArab', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByColorTextFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorTextFrancais', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByColorTextFrancaisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'colorTextFrancais', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByDelayAttenteVocal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delayAttenteVocal', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByDelayAttenteVocalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delayAttenteVocal', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByDelayChange() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delayChange', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByDelayChangeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'delayChange', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByEnteteArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enteteArab', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByEnteteArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enteteArab', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByEnteteFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enteteFrancais', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByEnteteFrancaisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enteteFrancais', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByFontArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontArab', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByFontArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontArab', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByFontFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontFrancais', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByFontFrancaisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fontFrancais', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isArab', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isArab', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsBoldArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBoldArab', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsBoldArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBoldArab', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsBoldFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBoldFrancais', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsBoldFrancaisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBoldFrancais', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsDateHorloge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDateHorloge', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsDateHorlogeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDateHorloge', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsFondImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFondImage', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsFondImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFondImage', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFrancais', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsFrancaisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFrancais', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsIconLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isIconLeft', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsIconLeftDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isIconLeft', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsIconRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isIconRight', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsIconRightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isIconRight', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsItalicArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isItalicArab', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsItalicArabDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isItalicArab', Sort.desc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsItalicFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isItalicFrancais', Sort.asc);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QAfterSortBy>
      thenByIsItalicFrancaisDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isItalicFrancais', Sort.desc);
    });
  }
}

extension ModalEnteteEcranQueryWhereDistinct
    on QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct> {
  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByColorDateHorloge() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'colorDateHorloge');
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByColorFond() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'colorFond');
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByColorIcon() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'colorIcon');
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByColorTextArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'colorTextArab');
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByColorTextFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'colorTextFrancais');
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByDelayAttenteVocal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'delayAttenteVocal');
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByDelayChange() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'delayChange');
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByEnteteArab({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enteteArab', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByEnteteFrancais({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enteteFrancais',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByFontArab({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fontArab', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByFontFrancais({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fontFrancais', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByIsArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isArab');
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByIsBoldArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isBoldArab');
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByIsBoldFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isBoldFrancais');
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByIsDateHorloge() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDateHorloge');
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByIsFondImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isFondImage');
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByIsFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isFrancais');
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByIsIconLeft() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isIconLeft');
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByIsIconRight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isIconRight');
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByIsItalicArab() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isItalicArab');
    });
  }

  QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QDistinct>
      distinctByIsItalicFrancais() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isItalicFrancais');
    });
  }
}

extension ModalEnteteEcranQueryProperty
    on QueryBuilder<ModalEnteteEcran, ModalEnteteEcran, QQueryProperty> {
  QueryBuilder<ModalEnteteEcran, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ModalEnteteEcran, int, QQueryOperations>
      colorDateHorlogeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colorDateHorloge');
    });
  }

  QueryBuilder<ModalEnteteEcran, int, QQueryOperations> colorFondProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colorFond');
    });
  }

  QueryBuilder<ModalEnteteEcran, int, QQueryOperations> colorIconProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colorIcon');
    });
  }

  QueryBuilder<ModalEnteteEcran, int, QQueryOperations>
      colorTextArabProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colorTextArab');
    });
  }

  QueryBuilder<ModalEnteteEcran, int, QQueryOperations>
      colorTextFrancaisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'colorTextFrancais');
    });
  }

  QueryBuilder<ModalEnteteEcran, int, QQueryOperations>
      delayAttenteVocalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'delayAttenteVocal');
    });
  }

  QueryBuilder<ModalEnteteEcran, int, QQueryOperations> delayChangeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'delayChange');
    });
  }

  QueryBuilder<ModalEnteteEcran, String, QQueryOperations>
      enteteArabProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enteteArab');
    });
  }

  QueryBuilder<ModalEnteteEcran, String, QQueryOperations>
      enteteFrancaisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enteteFrancais');
    });
  }

  QueryBuilder<ModalEnteteEcran, String, QQueryOperations> fontArabProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fontArab');
    });
  }

  QueryBuilder<ModalEnteteEcran, String, QQueryOperations>
      fontFrancaisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fontFrancais');
    });
  }

  QueryBuilder<ModalEnteteEcran, bool, QQueryOperations> isArabProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isArab');
    });
  }

  QueryBuilder<ModalEnteteEcran, bool, QQueryOperations> isBoldArabProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isBoldArab');
    });
  }

  QueryBuilder<ModalEnteteEcran, bool, QQueryOperations>
      isBoldFrancaisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isBoldFrancais');
    });
  }

  QueryBuilder<ModalEnteteEcran, bool, QQueryOperations>
      isDateHorlogeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDateHorloge');
    });
  }

  QueryBuilder<ModalEnteteEcran, bool, QQueryOperations> isFondImageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFondImage');
    });
  }

  QueryBuilder<ModalEnteteEcran, bool, QQueryOperations> isFrancaisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFrancais');
    });
  }

  QueryBuilder<ModalEnteteEcran, bool, QQueryOperations> isIconLeftProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isIconLeft');
    });
  }

  QueryBuilder<ModalEnteteEcran, bool, QQueryOperations> isIconRightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isIconRight');
    });
  }

  QueryBuilder<ModalEnteteEcran, bool, QQueryOperations>
      isItalicArabProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isItalicArab');
    });
  }

  QueryBuilder<ModalEnteteEcran, bool, QQueryOperations>
      isItalicFrancaisProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isItalicFrancais');
    });
  }
}
