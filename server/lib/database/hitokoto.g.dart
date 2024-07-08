// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hitokoto.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetHitokotoCollection on Isar {
  IsarCollection<int, Hitokoto> get hitokotos => this.collection();
}

const HitokotoSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'Hitokoto',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'length',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'uuid',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'hitokoto',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'type',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'source',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'creatorId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'createAt',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'sourceWho',
        type: IsarType.string,
      ),
    ],
    indexes: [
      IsarIndexSchema(
        name: 'uuid',
        properties: [
          "uuid",
        ],
        unique: true,
        hash: false,
      ),
    ],
  ),
  converter: IsarObjectConverter<int, Hitokoto>(
    serialize: serializeHitokoto,
    deserialize: deserializeHitokoto,
    deserializeProperty: deserializeHitokotoProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeHitokoto(IsarWriter writer, Hitokoto object) {
  IsarCore.writeLong(writer, 1, object.length);
  IsarCore.writeString(writer, 2, object.uuid);
  IsarCore.writeString(writer, 3, object.hitokoto);
  IsarCore.writeString(writer, 4, object.type);
  IsarCore.writeString(writer, 5, object.source);
  IsarCore.writeLong(writer, 6, object.creatorId);
  IsarCore.writeLong(writer, 7, object.createAt.toUtc().microsecondsSinceEpoch);
  {
    final value = object.sourceWho;
    if (value == null) {
      IsarCore.writeNull(writer, 8);
    } else {
      IsarCore.writeString(writer, 8, value);
    }
  }
  return object.id;
}

@isarProtected
Hitokoto deserializeHitokoto(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String _uuid;
  _uuid = IsarCore.readString(reader, 2) ?? '';
  final String _hitokoto;
  _hitokoto = IsarCore.readString(reader, 3) ?? '';
  final String _type;
  _type = IsarCore.readString(reader, 4) ?? '';
  final String _source;
  _source = IsarCore.readString(reader, 5) ?? '';
  final int _creatorId;
  _creatorId = IsarCore.readLong(reader, 6);
  final DateTime _createAt;
  {
    final value = IsarCore.readLong(reader, 7);
    if (value == -9223372036854775808) {
      _createAt = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _createAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final String? _sourceWho;
  _sourceWho = IsarCore.readString(reader, 8);
  final object = Hitokoto(
    id: _id,
    uuid: _uuid,
    hitokoto: _hitokoto,
    type: _type,
    source: _source,
    creatorId: _creatorId,
    createAt: _createAt,
    sourceWho: _sourceWho,
  );
  return object;
}

@isarProtected
dynamic deserializeHitokotoProp(IsarReader reader, int property) {
  switch (property) {
    case 1:
      return IsarCore.readLong(reader, 1);
    case 0:
      return IsarCore.readId(reader);
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      return IsarCore.readString(reader, 3) ?? '';
    case 4:
      return IsarCore.readString(reader, 4) ?? '';
    case 5:
      return IsarCore.readString(reader, 5) ?? '';
    case 6:
      return IsarCore.readLong(reader, 6);
    case 7:
      {
        final value = IsarCore.readLong(reader, 7);
        if (value == -9223372036854775808) {
          return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 8:
      return IsarCore.readString(reader, 8);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _HitokotoUpdate {
  bool call({
    required int id,
    int? length,
    String? uuid,
    String? hitokoto,
    String? type,
    String? source,
    int? creatorId,
    DateTime? createAt,
    String? sourceWho,
  });
}

class _HitokotoUpdateImpl implements _HitokotoUpdate {
  const _HitokotoUpdateImpl(this.collection);

  final IsarCollection<int, Hitokoto> collection;

  @override
  bool call({
    required int id,
    Object? length = ignore,
    Object? uuid = ignore,
    Object? hitokoto = ignore,
    Object? type = ignore,
    Object? source = ignore,
    Object? creatorId = ignore,
    Object? createAt = ignore,
    Object? sourceWho = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (length != ignore) 1: length as int?,
          if (uuid != ignore) 2: uuid as String?,
          if (hitokoto != ignore) 3: hitokoto as String?,
          if (type != ignore) 4: type as String?,
          if (source != ignore) 5: source as String?,
          if (creatorId != ignore) 6: creatorId as int?,
          if (createAt != ignore) 7: createAt as DateTime?,
          if (sourceWho != ignore) 8: sourceWho as String?,
        }) >
        0;
  }
}

sealed class _HitokotoUpdateAll {
  int call({
    required List<int> id,
    int? length,
    String? uuid,
    String? hitokoto,
    String? type,
    String? source,
    int? creatorId,
    DateTime? createAt,
    String? sourceWho,
  });
}

class _HitokotoUpdateAllImpl implements _HitokotoUpdateAll {
  const _HitokotoUpdateAllImpl(this.collection);

  final IsarCollection<int, Hitokoto> collection;

  @override
  int call({
    required List<int> id,
    Object? length = ignore,
    Object? uuid = ignore,
    Object? hitokoto = ignore,
    Object? type = ignore,
    Object? source = ignore,
    Object? creatorId = ignore,
    Object? createAt = ignore,
    Object? sourceWho = ignore,
  }) {
    return collection.updateProperties(id, {
      if (length != ignore) 1: length as int?,
      if (uuid != ignore) 2: uuid as String?,
      if (hitokoto != ignore) 3: hitokoto as String?,
      if (type != ignore) 4: type as String?,
      if (source != ignore) 5: source as String?,
      if (creatorId != ignore) 6: creatorId as int?,
      if (createAt != ignore) 7: createAt as DateTime?,
      if (sourceWho != ignore) 8: sourceWho as String?,
    });
  }
}

extension HitokotoUpdate on IsarCollection<int, Hitokoto> {
  _HitokotoUpdate get update => _HitokotoUpdateImpl(this);

  _HitokotoUpdateAll get updateAll => _HitokotoUpdateAllImpl(this);
}

sealed class _HitokotoQueryUpdate {
  int call({
    int? length,
    String? uuid,
    String? hitokoto,
    String? type,
    String? source,
    int? creatorId,
    DateTime? createAt,
    String? sourceWho,
  });
}

class _HitokotoQueryUpdateImpl implements _HitokotoQueryUpdate {
  const _HitokotoQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<Hitokoto> query;
  final int? limit;

  @override
  int call({
    Object? length = ignore,
    Object? uuid = ignore,
    Object? hitokoto = ignore,
    Object? type = ignore,
    Object? source = ignore,
    Object? creatorId = ignore,
    Object? createAt = ignore,
    Object? sourceWho = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (length != ignore) 1: length as int?,
      if (uuid != ignore) 2: uuid as String?,
      if (hitokoto != ignore) 3: hitokoto as String?,
      if (type != ignore) 4: type as String?,
      if (source != ignore) 5: source as String?,
      if (creatorId != ignore) 6: creatorId as int?,
      if (createAt != ignore) 7: createAt as DateTime?,
      if (sourceWho != ignore) 8: sourceWho as String?,
    });
  }
}

extension HitokotoQueryUpdate on IsarQuery<Hitokoto> {
  _HitokotoQueryUpdate get updateFirst =>
      _HitokotoQueryUpdateImpl(this, limit: 1);

  _HitokotoQueryUpdate get updateAll => _HitokotoQueryUpdateImpl(this);
}

class _HitokotoQueryBuilderUpdateImpl implements _HitokotoQueryUpdate {
  const _HitokotoQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<Hitokoto, Hitokoto, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? length = ignore,
    Object? uuid = ignore,
    Object? hitokoto = ignore,
    Object? type = ignore,
    Object? source = ignore,
    Object? creatorId = ignore,
    Object? createAt = ignore,
    Object? sourceWho = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (length != ignore) 1: length as int?,
        if (uuid != ignore) 2: uuid as String?,
        if (hitokoto != ignore) 3: hitokoto as String?,
        if (type != ignore) 4: type as String?,
        if (source != ignore) 5: source as String?,
        if (creatorId != ignore) 6: creatorId as int?,
        if (createAt != ignore) 7: createAt as DateTime?,
        if (sourceWho != ignore) 8: sourceWho as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension HitokotoQueryBuilderUpdate
    on QueryBuilder<Hitokoto, Hitokoto, QOperations> {
  _HitokotoQueryUpdate get updateFirst =>
      _HitokotoQueryBuilderUpdateImpl(this, limit: 1);

  _HitokotoQueryUpdate get updateAll => _HitokotoQueryBuilderUpdateImpl(this);
}

extension HitokotoQueryFilter
    on QueryBuilder<Hitokoto, Hitokoto, QFilterCondition> {
  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> lengthEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> lengthGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition>
      lengthGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> lengthLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition>
      lengthLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> lengthBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition>
      idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> uuidEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> uuidGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition>
      uuidGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> uuidLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> uuidLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> uuidBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> uuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> uuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> uuidContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> uuidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> uuidIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> uuidIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> hitokotoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> hitokotoGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition>
      hitokotoGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> hitokotoLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition>
      hitokotoLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> hitokotoBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> hitokotoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> hitokotoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> hitokotoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> hitokotoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> hitokotoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> hitokotoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> typeGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition>
      typeGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> typeLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> typeLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> typeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> typeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> typeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition>
      sourceGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition>
      sourceLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 5,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> creatorIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> creatorIdGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition>
      creatorIdGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> creatorIdLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition>
      creatorIdLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> creatorIdBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> createAtEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> createAtGreaterThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition>
      createAtGreaterThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> createAtLessThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition>
      createAtLessThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 7,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> createAtBetween(
    DateTime lower,
    DateTime upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceWhoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceWhoIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 8));
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceWhoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceWhoGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition>
      sourceWhoGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceWhoLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition>
      sourceWhoLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceWhoBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 8,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceWhoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceWhoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceWhoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 8,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceWhoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 8,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition> sourceWhoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterFilterCondition>
      sourceWhoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 8,
          value: '',
        ),
      );
    });
  }
}

extension HitokotoQueryObject
    on QueryBuilder<Hitokoto, Hitokoto, QFilterCondition> {}

extension HitokotoQuerySortBy on QueryBuilder<Hitokoto, Hitokoto, QSortBy> {
  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortByLength() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortByLengthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortByUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortByUuidDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortByHitokoto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortByHitokotoDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortByTypeDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortBySource(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortBySourceDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortByCreatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortByCreatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortByCreateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortByCreateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortBySourceWho(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> sortBySourceWhoDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        8,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension HitokotoQuerySortThenBy
    on QueryBuilder<Hitokoto, Hitokoto, QSortThenBy> {
  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenByLength() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenByLengthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenByUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenByUuidDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenByHitokoto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenByHitokotoDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenByTypeDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenBySource(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenBySourceDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenByCreatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenByCreatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenByCreateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenByCreateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenBySourceWho(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterSortBy> thenBySourceWhoDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(8, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension HitokotoQueryWhereDistinct
    on QueryBuilder<Hitokoto, Hitokoto, QDistinct> {
  QueryBuilder<Hitokoto, Hitokoto, QAfterDistinct> distinctByLength() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterDistinct> distinctByUuid(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterDistinct> distinctByHitokoto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterDistinct> distinctByType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterDistinct> distinctBySource(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterDistinct> distinctByCreatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterDistinct> distinctByCreateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7);
    });
  }

  QueryBuilder<Hitokoto, Hitokoto, QAfterDistinct> distinctBySourceWho(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(8, caseSensitive: caseSensitive);
    });
  }
}

extension HitokotoQueryProperty1
    on QueryBuilder<Hitokoto, Hitokoto, QProperty> {
  QueryBuilder<Hitokoto, int, QAfterProperty> lengthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Hitokoto, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Hitokoto, String, QAfterProperty> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Hitokoto, String, QAfterProperty> hitokotoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Hitokoto, String, QAfterProperty> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Hitokoto, String, QAfterProperty> sourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<Hitokoto, int, QAfterProperty> creatorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<Hitokoto, DateTime, QAfterProperty> createAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<Hitokoto, String?, QAfterProperty> sourceWhoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }
}

extension HitokotoQueryProperty2<R>
    on QueryBuilder<Hitokoto, R, QAfterProperty> {
  QueryBuilder<Hitokoto, (R, int), QAfterProperty> lengthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Hitokoto, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Hitokoto, (R, String), QAfterProperty> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Hitokoto, (R, String), QAfterProperty> hitokotoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Hitokoto, (R, String), QAfterProperty> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Hitokoto, (R, String), QAfterProperty> sourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<Hitokoto, (R, int), QAfterProperty> creatorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<Hitokoto, (R, DateTime), QAfterProperty> createAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<Hitokoto, (R, String?), QAfterProperty> sourceWhoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }
}

extension HitokotoQueryProperty3<R1, R2>
    on QueryBuilder<Hitokoto, (R1, R2), QAfterProperty> {
  QueryBuilder<Hitokoto, (R1, R2, int), QOperations> lengthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<Hitokoto, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<Hitokoto, (R1, R2, String), QOperations> uuidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<Hitokoto, (R1, R2, String), QOperations> hitokotoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<Hitokoto, (R1, R2, String), QOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<Hitokoto, (R1, R2, String), QOperations> sourceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<Hitokoto, (R1, R2, int), QOperations> creatorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<Hitokoto, (R1, R2, DateTime), QOperations> createAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }

  QueryBuilder<Hitokoto, (R1, R2, String?), QOperations> sourceWhoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(8);
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HitokotoImpl _$$HitokotoImplFromJson(Map<String, dynamic> json) =>
    _$HitokotoImpl(
      id: (json['id'] as num).toInt(),
      uuid: json['uuid'] as String,
      hitokoto: json['hitokoto'] as String,
      type: json['type'] as String,
      source: json['source'] as String,
      creatorId: (json['creatorId'] as num).toInt(),
      createAt: DateTime.parse(json['createAt'] as String),
      sourceWho: json['sourceWho'] as String?,
    );

Map<String, dynamic> _$$HitokotoImplToJson(_$HitokotoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uuid': instance.uuid,
      'hitokoto': instance.hitokoto,
      'type': instance.type,
      'source': instance.source,
      'creatorId': instance.creatorId,
      'createAt': instance.createAt.toIso8601String(),
      'sourceWho': instance.sourceWho,
    };
