// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modal_mode_appel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetModalModeAppelCollection on Isar {
  IsarCollection<ModalModeAppel> get modalModeAppels => this.collection();
}

const ModalModeAppelSchema = CollectionSchema(
  name: r'ModalModeAppel',
  id: -695503806377979338,
  properties: {
    r'guichetNumeroColorText': PropertySchema(
      id: 0,
      name: r'guichetNumeroColorText',
      type: IsarType.long,
    ),
    r'guichetNumeroCouleurClignotment': PropertySchema(
      id: 1,
      name: r'guichetNumeroCouleurClignotment',
      type: IsarType.long,
    ),
    r'guichetNumeroCouleurFond': PropertySchema(
      id: 2,
      name: r'guichetNumeroCouleurFond',
      type: IsarType.long,
    ),
    r'guichetNumeroIsBold': PropertySchema(
      id: 3,
      name: r'guichetNumeroIsBold',
      type: IsarType.bool,
    ),
    r'guichetNumeroIsItalic': PropertySchema(
      id: 4,
      name: r'guichetNumeroIsItalic',
      type: IsarType.bool,
    ),
    r'guichetNumeroStyleBoite': PropertySchema(
      id: 5,
      name: r'guichetNumeroStyleBoite',
      type: IsarType.string,
    ),
    r'guichetTitreColorText': PropertySchema(
      id: 6,
      name: r'guichetTitreColorText',
      type: IsarType.long,
    ),
    r'guichetTitreCouleurClignotment': PropertySchema(
      id: 7,
      name: r'guichetTitreCouleurClignotment',
      type: IsarType.long,
    ),
    r'guichetTitreCouleurFond': PropertySchema(
      id: 8,
      name: r'guichetTitreCouleurFond',
      type: IsarType.long,
    ),
    r'guichetTitreIsBold': PropertySchema(
      id: 9,
      name: r'guichetTitreIsBold',
      type: IsarType.bool,
    ),
    r'guichetTitreIsItalic': PropertySchema(
      id: 10,
      name: r'guichetTitreIsItalic',
      type: IsarType.bool,
    ),
    r'guichetTitreStyleBoite': PropertySchema(
      id: 11,
      name: r'guichetTitreStyleBoite',
      type: IsarType.string,
    ),
    r'intervalleClignotment': PropertySchema(
      id: 12,
      name: r'intervalleClignotment',
      type: IsarType.long,
    ),
    r'numeroNumeroColorText': PropertySchema(
      id: 13,
      name: r'numeroNumeroColorText',
      type: IsarType.long,
    ),
    r'numeroNumeroCouleurClignotment': PropertySchema(
      id: 14,
      name: r'numeroNumeroCouleurClignotment',
      type: IsarType.long,
    ),
    r'numeroNumeroCouleurFond': PropertySchema(
      id: 15,
      name: r'numeroNumeroCouleurFond',
      type: IsarType.long,
    ),
    r'numeroNumeroIsBold': PropertySchema(
      id: 16,
      name: r'numeroNumeroIsBold',
      type: IsarType.bool,
    ),
    r'numeroNumeroIsItalic': PropertySchema(
      id: 17,
      name: r'numeroNumeroIsItalic',
      type: IsarType.bool,
    ),
    r'numeroNumeroStyleBoite': PropertySchema(
      id: 18,
      name: r'numeroNumeroStyleBoite',
      type: IsarType.string,
    ),
    r'numeroTitreColorText': PropertySchema(
      id: 19,
      name: r'numeroTitreColorText',
      type: IsarType.long,
    ),
    r'numeroTitreCouleurClignotment': PropertySchema(
      id: 20,
      name: r'numeroTitreCouleurClignotment',
      type: IsarType.long,
    ),
    r'numeroTitreCouleurFond': PropertySchema(
      id: 21,
      name: r'numeroTitreCouleurFond',
      type: IsarType.long,
    ),
    r'numeroTitreIsBold': PropertySchema(
      id: 22,
      name: r'numeroTitreIsBold',
      type: IsarType.bool,
    ),
    r'numeroTitreIsItalic': PropertySchema(
      id: 23,
      name: r'numeroTitreIsItalic',
      type: IsarType.bool,
    ),
    r'numeroTitreStyleBoite': PropertySchema(
      id: 24,
      name: r'numeroTitreStyleBoite',
      type: IsarType.string,
    )
  },
  estimateSize: _modalModeAppelEstimateSize,
  serialize: _modalModeAppelSerialize,
  deserialize: _modalModeAppelDeserialize,
  deserializeProp: _modalModeAppelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _modalModeAppelGetId,
  getLinks: _modalModeAppelGetLinks,
  attach: _modalModeAppelAttach,
  version: '3.1.0+1',
);

int _modalModeAppelEstimateSize(
  ModalModeAppel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.guichetNumeroStyleBoite.length * 3;
  bytesCount += 3 + object.guichetTitreStyleBoite.length * 3;
  bytesCount += 3 + object.numeroNumeroStyleBoite.length * 3;
  bytesCount += 3 + object.numeroTitreStyleBoite.length * 3;
  return bytesCount;
}

void _modalModeAppelSerialize(
  ModalModeAppel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.guichetNumeroColorText);
  writer.writeLong(offsets[1], object.guichetNumeroCouleurClignotment);
  writer.writeLong(offsets[2], object.guichetNumeroCouleurFond);
  writer.writeBool(offsets[3], object.guichetNumeroIsBold);
  writer.writeBool(offsets[4], object.guichetNumeroIsItalic);
  writer.writeString(offsets[5], object.guichetNumeroStyleBoite);
  writer.writeLong(offsets[6], object.guichetTitreColorText);
  writer.writeLong(offsets[7], object.guichetTitreCouleurClignotment);
  writer.writeLong(offsets[8], object.guichetTitreCouleurFond);
  writer.writeBool(offsets[9], object.guichetTitreIsBold);
  writer.writeBool(offsets[10], object.guichetTitreIsItalic);
  writer.writeString(offsets[11], object.guichetTitreStyleBoite);
  writer.writeLong(offsets[12], object.intervalleClignotment);
  writer.writeLong(offsets[13], object.numeroNumeroColorText);
  writer.writeLong(offsets[14], object.numeroNumeroCouleurClignotment);
  writer.writeLong(offsets[15], object.numeroNumeroCouleurFond);
  writer.writeBool(offsets[16], object.numeroNumeroIsBold);
  writer.writeBool(offsets[17], object.numeroNumeroIsItalic);
  writer.writeString(offsets[18], object.numeroNumeroStyleBoite);
  writer.writeLong(offsets[19], object.numeroTitreColorText);
  writer.writeLong(offsets[20], object.numeroTitreCouleurClignotment);
  writer.writeLong(offsets[21], object.numeroTitreCouleurFond);
  writer.writeBool(offsets[22], object.numeroTitreIsBold);
  writer.writeBool(offsets[23], object.numeroTitreIsItalic);
  writer.writeString(offsets[24], object.numeroTitreStyleBoite);
}

ModalModeAppel _modalModeAppelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ModalModeAppel(
    guichetNumeroColorText: reader.readLong(offsets[0]),
    guichetNumeroCouleurClignotment: reader.readLong(offsets[1]),
    guichetNumeroCouleurFond: reader.readLong(offsets[2]),
    guichetNumeroIsBold: reader.readBool(offsets[3]),
    guichetNumeroIsItalic: reader.readBool(offsets[4]),
    guichetNumeroStyleBoite: reader.readString(offsets[5]),
    guichetTitreColorText: reader.readLong(offsets[6]),
    guichetTitreCouleurClignotment: reader.readLong(offsets[7]),
    guichetTitreCouleurFond: reader.readLong(offsets[8]),
    guichetTitreIsBold: reader.readBool(offsets[9]),
    guichetTitreIsItalic: reader.readBool(offsets[10]),
    guichetTitreStyleBoite: reader.readString(offsets[11]),
    intervalleClignotment: reader.readLong(offsets[12]),
    numeroNumeroColorText: reader.readLong(offsets[13]),
    numeroNumeroCouleurClignotment: reader.readLong(offsets[14]),
    numeroNumeroCouleurFond: reader.readLong(offsets[15]),
    numeroNumeroIsBold: reader.readBool(offsets[16]),
    numeroNumeroIsItalic: reader.readBool(offsets[17]),
    numeroNumeroStyleBoite: reader.readString(offsets[18]),
    numeroTitreColorText: reader.readLong(offsets[19]),
    numeroTitreCouleurClignotment: reader.readLong(offsets[20]),
    numeroTitreCouleurFond: reader.readLong(offsets[21]),
    numeroTitreIsBold: reader.readBool(offsets[22]),
    numeroTitreIsItalic: reader.readBool(offsets[23]),
    numeroTitreStyleBoite: reader.readString(offsets[24]),
  );
  object.id = id;
  return object;
}

P _modalModeAppelDeserializeProp<P>(
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
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readBool(offset)) as P;
    case 10:
      return (reader.readBool(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    case 15:
      return (reader.readLong(offset)) as P;
    case 16:
      return (reader.readBool(offset)) as P;
    case 17:
      return (reader.readBool(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readLong(offset)) as P;
    case 20:
      return (reader.readLong(offset)) as P;
    case 21:
      return (reader.readLong(offset)) as P;
    case 22:
      return (reader.readBool(offset)) as P;
    case 23:
      return (reader.readBool(offset)) as P;
    case 24:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _modalModeAppelGetId(ModalModeAppel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _modalModeAppelGetLinks(ModalModeAppel object) {
  return [];
}

void _modalModeAppelAttach(
    IsarCollection<dynamic> col, Id id, ModalModeAppel object) {
  object.id = id;
}

extension ModalModeAppelQueryWhereSort
    on QueryBuilder<ModalModeAppel, ModalModeAppel, QWhere> {
  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ModalModeAppelQueryWhere
    on QueryBuilder<ModalModeAppel, ModalModeAppel, QWhereClause> {
  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterWhereClause> idBetween(
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

extension ModalModeAppelQueryFilter
    on QueryBuilder<ModalModeAppel, ModalModeAppel, QFilterCondition> {
  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroColorTextEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guichetNumeroColorText',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroColorTextGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'guichetNumeroColorText',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroColorTextLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'guichetNumeroColorText',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroColorTextBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'guichetNumeroColorText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroCouleurClignotmentEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guichetNumeroCouleurClignotment',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroCouleurClignotmentGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'guichetNumeroCouleurClignotment',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroCouleurClignotmentLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'guichetNumeroCouleurClignotment',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroCouleurClignotmentBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'guichetNumeroCouleurClignotment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroCouleurFondEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guichetNumeroCouleurFond',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroCouleurFondGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'guichetNumeroCouleurFond',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroCouleurFondLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'guichetNumeroCouleurFond',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroCouleurFondBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'guichetNumeroCouleurFond',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroIsBoldEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guichetNumeroIsBold',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroIsItalicEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guichetNumeroIsItalic',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroStyleBoiteEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guichetNumeroStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroStyleBoiteGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'guichetNumeroStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroStyleBoiteLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'guichetNumeroStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroStyleBoiteBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'guichetNumeroStyleBoite',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroStyleBoiteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'guichetNumeroStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroStyleBoiteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'guichetNumeroStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroStyleBoiteContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'guichetNumeroStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroStyleBoiteMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'guichetNumeroStyleBoite',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroStyleBoiteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guichetNumeroStyleBoite',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetNumeroStyleBoiteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'guichetNumeroStyleBoite',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreColorTextEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guichetTitreColorText',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreColorTextGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'guichetTitreColorText',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreColorTextLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'guichetTitreColorText',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreColorTextBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'guichetTitreColorText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreCouleurClignotmentEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guichetTitreCouleurClignotment',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreCouleurClignotmentGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'guichetTitreCouleurClignotment',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreCouleurClignotmentLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'guichetTitreCouleurClignotment',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreCouleurClignotmentBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'guichetTitreCouleurClignotment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreCouleurFondEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guichetTitreCouleurFond',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreCouleurFondGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'guichetTitreCouleurFond',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreCouleurFondLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'guichetTitreCouleurFond',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreCouleurFondBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'guichetTitreCouleurFond',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreIsBoldEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guichetTitreIsBold',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreIsItalicEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guichetTitreIsItalic',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreStyleBoiteEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guichetTitreStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreStyleBoiteGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'guichetTitreStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreStyleBoiteLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'guichetTitreStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreStyleBoiteBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'guichetTitreStyleBoite',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreStyleBoiteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'guichetTitreStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreStyleBoiteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'guichetTitreStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreStyleBoiteContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'guichetTitreStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreStyleBoiteMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'guichetTitreStyleBoite',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreStyleBoiteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'guichetTitreStyleBoite',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      guichetTitreStyleBoiteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'guichetTitreStyleBoite',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
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

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
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

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      intervalleClignotmentEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'intervalleClignotment',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      intervalleClignotmentGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'intervalleClignotment',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      intervalleClignotmentLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'intervalleClignotment',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      intervalleClignotmentBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'intervalleClignotment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroColorTextEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroNumeroColorText',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroColorTextGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numeroNumeroColorText',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroColorTextLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numeroNumeroColorText',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroColorTextBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numeroNumeroColorText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroCouleurClignotmentEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroNumeroCouleurClignotment',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroCouleurClignotmentGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numeroNumeroCouleurClignotment',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroCouleurClignotmentLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numeroNumeroCouleurClignotment',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroCouleurClignotmentBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numeroNumeroCouleurClignotment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroCouleurFondEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroNumeroCouleurFond',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroCouleurFondGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numeroNumeroCouleurFond',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroCouleurFondLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numeroNumeroCouleurFond',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroCouleurFondBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numeroNumeroCouleurFond',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroIsBoldEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroNumeroIsBold',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroIsItalicEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroNumeroIsItalic',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroStyleBoiteEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroNumeroStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroStyleBoiteGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numeroNumeroStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroStyleBoiteLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numeroNumeroStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroStyleBoiteBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numeroNumeroStyleBoite',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroStyleBoiteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'numeroNumeroStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroStyleBoiteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'numeroNumeroStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroStyleBoiteContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'numeroNumeroStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroStyleBoiteMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'numeroNumeroStyleBoite',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroStyleBoiteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroNumeroStyleBoite',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroNumeroStyleBoiteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'numeroNumeroStyleBoite',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreColorTextEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroTitreColorText',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreColorTextGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numeroTitreColorText',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreColorTextLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numeroTitreColorText',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreColorTextBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numeroTitreColorText',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreCouleurClignotmentEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroTitreCouleurClignotment',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreCouleurClignotmentGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numeroTitreCouleurClignotment',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreCouleurClignotmentLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numeroTitreCouleurClignotment',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreCouleurClignotmentBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numeroTitreCouleurClignotment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreCouleurFondEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroTitreCouleurFond',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreCouleurFondGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numeroTitreCouleurFond',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreCouleurFondLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numeroTitreCouleurFond',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreCouleurFondBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numeroTitreCouleurFond',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreIsBoldEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroTitreIsBold',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreIsItalicEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroTitreIsItalic',
        value: value,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreStyleBoiteEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroTitreStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreStyleBoiteGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'numeroTitreStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreStyleBoiteLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'numeroTitreStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreStyleBoiteBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'numeroTitreStyleBoite',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreStyleBoiteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'numeroTitreStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreStyleBoiteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'numeroTitreStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreStyleBoiteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'numeroTitreStyleBoite',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreStyleBoiteMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'numeroTitreStyleBoite',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreStyleBoiteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'numeroTitreStyleBoite',
        value: '',
      ));
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterFilterCondition>
      numeroTitreStyleBoiteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'numeroTitreStyleBoite',
        value: '',
      ));
    });
  }
}

extension ModalModeAppelQueryObject
    on QueryBuilder<ModalModeAppel, ModalModeAppel, QFilterCondition> {}

extension ModalModeAppelQueryLinks
    on QueryBuilder<ModalModeAppel, ModalModeAppel, QFilterCondition> {}

extension ModalModeAppelQuerySortBy
    on QueryBuilder<ModalModeAppel, ModalModeAppel, QSortBy> {
  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetNumeroColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroColorText', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetNumeroColorTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroColorText', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetNumeroCouleurClignotment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroCouleurClignotment', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetNumeroCouleurClignotmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroCouleurClignotment', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetNumeroCouleurFond() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroCouleurFond', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetNumeroCouleurFondDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroCouleurFond', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetNumeroIsBold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroIsBold', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetNumeroIsBoldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroIsBold', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetNumeroIsItalic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroIsItalic', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetNumeroIsItalicDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroIsItalic', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetNumeroStyleBoite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroStyleBoite', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetNumeroStyleBoiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroStyleBoite', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetTitreColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreColorText', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetTitreColorTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreColorText', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetTitreCouleurClignotment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreCouleurClignotment', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetTitreCouleurClignotmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreCouleurClignotment', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetTitreCouleurFond() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreCouleurFond', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetTitreCouleurFondDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreCouleurFond', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetTitreIsBold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreIsBold', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetTitreIsBoldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreIsBold', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetTitreIsItalic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreIsItalic', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetTitreIsItalicDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreIsItalic', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetTitreStyleBoite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreStyleBoite', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByGuichetTitreStyleBoiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreStyleBoite', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByIntervalleClignotment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intervalleClignotment', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByIntervalleClignotmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intervalleClignotment', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroNumeroColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroColorText', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroNumeroColorTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroColorText', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroNumeroCouleurClignotment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroCouleurClignotment', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroNumeroCouleurClignotmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroCouleurClignotment', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroNumeroCouleurFond() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroCouleurFond', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroNumeroCouleurFondDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroCouleurFond', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroNumeroIsBold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroIsBold', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroNumeroIsBoldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroIsBold', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroNumeroIsItalic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroIsItalic', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroNumeroIsItalicDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroIsItalic', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroNumeroStyleBoite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroStyleBoite', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroNumeroStyleBoiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroStyleBoite', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroTitreColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreColorText', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroTitreColorTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreColorText', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroTitreCouleurClignotment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreCouleurClignotment', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroTitreCouleurClignotmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreCouleurClignotment', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroTitreCouleurFond() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreCouleurFond', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroTitreCouleurFondDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreCouleurFond', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroTitreIsBold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreIsBold', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroTitreIsBoldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreIsBold', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroTitreIsItalic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreIsItalic', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroTitreIsItalicDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreIsItalic', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroTitreStyleBoite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreStyleBoite', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      sortByNumeroTitreStyleBoiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreStyleBoite', Sort.desc);
    });
  }
}

extension ModalModeAppelQuerySortThenBy
    on QueryBuilder<ModalModeAppel, ModalModeAppel, QSortThenBy> {
  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetNumeroColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroColorText', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetNumeroColorTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroColorText', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetNumeroCouleurClignotment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroCouleurClignotment', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetNumeroCouleurClignotmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroCouleurClignotment', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetNumeroCouleurFond() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroCouleurFond', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetNumeroCouleurFondDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroCouleurFond', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetNumeroIsBold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroIsBold', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetNumeroIsBoldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroIsBold', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetNumeroIsItalic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroIsItalic', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetNumeroIsItalicDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroIsItalic', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetNumeroStyleBoite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroStyleBoite', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetNumeroStyleBoiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetNumeroStyleBoite', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetTitreColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreColorText', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetTitreColorTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreColorText', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetTitreCouleurClignotment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreCouleurClignotment', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetTitreCouleurClignotmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreCouleurClignotment', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetTitreCouleurFond() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreCouleurFond', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetTitreCouleurFondDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreCouleurFond', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetTitreIsBold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreIsBold', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetTitreIsBoldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreIsBold', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetTitreIsItalic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreIsItalic', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetTitreIsItalicDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreIsItalic', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetTitreStyleBoite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreStyleBoite', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByGuichetTitreStyleBoiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'guichetTitreStyleBoite', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByIntervalleClignotment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intervalleClignotment', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByIntervalleClignotmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'intervalleClignotment', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroNumeroColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroColorText', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroNumeroColorTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroColorText', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroNumeroCouleurClignotment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroCouleurClignotment', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroNumeroCouleurClignotmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroCouleurClignotment', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroNumeroCouleurFond() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroCouleurFond', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroNumeroCouleurFondDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroCouleurFond', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroNumeroIsBold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroIsBold', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroNumeroIsBoldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroIsBold', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroNumeroIsItalic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroIsItalic', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroNumeroIsItalicDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroIsItalic', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroNumeroStyleBoite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroStyleBoite', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroNumeroStyleBoiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroNumeroStyleBoite', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroTitreColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreColorText', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroTitreColorTextDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreColorText', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroTitreCouleurClignotment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreCouleurClignotment', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroTitreCouleurClignotmentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreCouleurClignotment', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroTitreCouleurFond() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreCouleurFond', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroTitreCouleurFondDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreCouleurFond', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroTitreIsBold() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreIsBold', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroTitreIsBoldDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreIsBold', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroTitreIsItalic() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreIsItalic', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroTitreIsItalicDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreIsItalic', Sort.desc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroTitreStyleBoite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreStyleBoite', Sort.asc);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QAfterSortBy>
      thenByNumeroTitreStyleBoiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'numeroTitreStyleBoite', Sort.desc);
    });
  }
}

extension ModalModeAppelQueryWhereDistinct
    on QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct> {
  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByGuichetNumeroColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'guichetNumeroColorText');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByGuichetNumeroCouleurClignotment() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'guichetNumeroCouleurClignotment');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByGuichetNumeroCouleurFond() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'guichetNumeroCouleurFond');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByGuichetNumeroIsBold() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'guichetNumeroIsBold');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByGuichetNumeroIsItalic() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'guichetNumeroIsItalic');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByGuichetNumeroStyleBoite({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'guichetNumeroStyleBoite',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByGuichetTitreColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'guichetTitreColorText');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByGuichetTitreCouleurClignotment() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'guichetTitreCouleurClignotment');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByGuichetTitreCouleurFond() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'guichetTitreCouleurFond');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByGuichetTitreIsBold() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'guichetTitreIsBold');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByGuichetTitreIsItalic() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'guichetTitreIsItalic');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByGuichetTitreStyleBoite({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'guichetTitreStyleBoite',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByIntervalleClignotment() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'intervalleClignotment');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByNumeroNumeroColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numeroNumeroColorText');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByNumeroNumeroCouleurClignotment() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numeroNumeroCouleurClignotment');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByNumeroNumeroCouleurFond() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numeroNumeroCouleurFond');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByNumeroNumeroIsBold() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numeroNumeroIsBold');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByNumeroNumeroIsItalic() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numeroNumeroIsItalic');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByNumeroNumeroStyleBoite({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numeroNumeroStyleBoite',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByNumeroTitreColorText() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numeroTitreColorText');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByNumeroTitreCouleurClignotment() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numeroTitreCouleurClignotment');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByNumeroTitreCouleurFond() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numeroTitreCouleurFond');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByNumeroTitreIsBold() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numeroTitreIsBold');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByNumeroTitreIsItalic() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numeroTitreIsItalic');
    });
  }

  QueryBuilder<ModalModeAppel, ModalModeAppel, QDistinct>
      distinctByNumeroTitreStyleBoite({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'numeroTitreStyleBoite',
          caseSensitive: caseSensitive);
    });
  }
}

extension ModalModeAppelQueryProperty
    on QueryBuilder<ModalModeAppel, ModalModeAppel, QQueryProperty> {
  QueryBuilder<ModalModeAppel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ModalModeAppel, int, QQueryOperations>
      guichetNumeroColorTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'guichetNumeroColorText');
    });
  }

  QueryBuilder<ModalModeAppel, int, QQueryOperations>
      guichetNumeroCouleurClignotmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'guichetNumeroCouleurClignotment');
    });
  }

  QueryBuilder<ModalModeAppel, int, QQueryOperations>
      guichetNumeroCouleurFondProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'guichetNumeroCouleurFond');
    });
  }

  QueryBuilder<ModalModeAppel, bool, QQueryOperations>
      guichetNumeroIsBoldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'guichetNumeroIsBold');
    });
  }

  QueryBuilder<ModalModeAppel, bool, QQueryOperations>
      guichetNumeroIsItalicProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'guichetNumeroIsItalic');
    });
  }

  QueryBuilder<ModalModeAppel, String, QQueryOperations>
      guichetNumeroStyleBoiteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'guichetNumeroStyleBoite');
    });
  }

  QueryBuilder<ModalModeAppel, int, QQueryOperations>
      guichetTitreColorTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'guichetTitreColorText');
    });
  }

  QueryBuilder<ModalModeAppel, int, QQueryOperations>
      guichetTitreCouleurClignotmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'guichetTitreCouleurClignotment');
    });
  }

  QueryBuilder<ModalModeAppel, int, QQueryOperations>
      guichetTitreCouleurFondProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'guichetTitreCouleurFond');
    });
  }

  QueryBuilder<ModalModeAppel, bool, QQueryOperations>
      guichetTitreIsBoldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'guichetTitreIsBold');
    });
  }

  QueryBuilder<ModalModeAppel, bool, QQueryOperations>
      guichetTitreIsItalicProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'guichetTitreIsItalic');
    });
  }

  QueryBuilder<ModalModeAppel, String, QQueryOperations>
      guichetTitreStyleBoiteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'guichetTitreStyleBoite');
    });
  }

  QueryBuilder<ModalModeAppel, int, QQueryOperations>
      intervalleClignotmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'intervalleClignotment');
    });
  }

  QueryBuilder<ModalModeAppel, int, QQueryOperations>
      numeroNumeroColorTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numeroNumeroColorText');
    });
  }

  QueryBuilder<ModalModeAppel, int, QQueryOperations>
      numeroNumeroCouleurClignotmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numeroNumeroCouleurClignotment');
    });
  }

  QueryBuilder<ModalModeAppel, int, QQueryOperations>
      numeroNumeroCouleurFondProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numeroNumeroCouleurFond');
    });
  }

  QueryBuilder<ModalModeAppel, bool, QQueryOperations>
      numeroNumeroIsBoldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numeroNumeroIsBold');
    });
  }

  QueryBuilder<ModalModeAppel, bool, QQueryOperations>
      numeroNumeroIsItalicProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numeroNumeroIsItalic');
    });
  }

  QueryBuilder<ModalModeAppel, String, QQueryOperations>
      numeroNumeroStyleBoiteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numeroNumeroStyleBoite');
    });
  }

  QueryBuilder<ModalModeAppel, int, QQueryOperations>
      numeroTitreColorTextProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numeroTitreColorText');
    });
  }

  QueryBuilder<ModalModeAppel, int, QQueryOperations>
      numeroTitreCouleurClignotmentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numeroTitreCouleurClignotment');
    });
  }

  QueryBuilder<ModalModeAppel, int, QQueryOperations>
      numeroTitreCouleurFondProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numeroTitreCouleurFond');
    });
  }

  QueryBuilder<ModalModeAppel, bool, QQueryOperations>
      numeroTitreIsBoldProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numeroTitreIsBold');
    });
  }

  QueryBuilder<ModalModeAppel, bool, QQueryOperations>
      numeroTitreIsItalicProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numeroTitreIsItalic');
    });
  }

  QueryBuilder<ModalModeAppel, String, QQueryOperations>
      numeroTitreStyleBoiteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'numeroTitreStyleBoite');
    });
  }
}
