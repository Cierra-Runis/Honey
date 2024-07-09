// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetUserCollection on Isar {
  IsarCollection<int, User> get users => this.collection();
}

const UserSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'User',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'username',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'password',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'createAt',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'editAt',
        type: IsarType.dateTime,
      ),
    ],
    indexes: [
      IsarIndexSchema(
        name: 'username',
        properties: [
          "username",
        ],
        unique: true,
        hash: false,
      ),
    ],
  ),
  converter: IsarObjectConverter<int, User>(
    serialize: serializeUser,
    deserialize: deserializeUser,
    deserializeProperty: deserializeUserProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeUser(IsarWriter writer, User object) {
  IsarCore.writeString(writer, 1, object.username);
  IsarCore.writeString(writer, 2, object.password);
  IsarCore.writeLong(writer, 3, object.createAt.toUtc().microsecondsSinceEpoch);
  IsarCore.writeLong(writer, 4, object.editAt.toUtc().microsecondsSinceEpoch);
  return object.id;
}

@isarProtected
User deserializeUser(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String _username;
  _username = IsarCore.readString(reader, 1) ?? '';
  final String _password;
  _password = IsarCore.readString(reader, 2) ?? '';
  final DateTime _createAt;
  {
    final value = IsarCore.readLong(reader, 3);
    if (value == -9223372036854775808) {
      _createAt = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _createAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final DateTime _editAt;
  {
    final value = IsarCore.readLong(reader, 4);
    if (value == -9223372036854775808) {
      _editAt = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _editAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final object = User(
    id: _id,
    username: _username,
    password: _password,
    createAt: _createAt,
    editAt: _editAt,
  );
  return object;
}

@isarProtected
dynamic deserializeUserProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      {
        final value = IsarCore.readLong(reader, 3);
        if (value == -9223372036854775808) {
          return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 4:
      {
        final value = IsarCore.readLong(reader, 4);
        if (value == -9223372036854775808) {
          return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _UserUpdate {
  bool call({
    required int id,
    String? username,
    String? password,
    DateTime? createAt,
    DateTime? editAt,
  });
}

class _UserUpdateImpl implements _UserUpdate {
  const _UserUpdateImpl(this.collection);

  final IsarCollection<int, User> collection;

  @override
  bool call({
    required int id,
    Object? username = ignore,
    Object? password = ignore,
    Object? createAt = ignore,
    Object? editAt = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (username != ignore) 1: username as String?,
          if (password != ignore) 2: password as String?,
          if (createAt != ignore) 3: createAt as DateTime?,
          if (editAt != ignore) 4: editAt as DateTime?,
        }) >
        0;
  }
}

sealed class _UserUpdateAll {
  int call({
    required List<int> id,
    String? username,
    String? password,
    DateTime? createAt,
    DateTime? editAt,
  });
}

class _UserUpdateAllImpl implements _UserUpdateAll {
  const _UserUpdateAllImpl(this.collection);

  final IsarCollection<int, User> collection;

  @override
  int call({
    required List<int> id,
    Object? username = ignore,
    Object? password = ignore,
    Object? createAt = ignore,
    Object? editAt = ignore,
  }) {
    return collection.updateProperties(id, {
      if (username != ignore) 1: username as String?,
      if (password != ignore) 2: password as String?,
      if (createAt != ignore) 3: createAt as DateTime?,
      if (editAt != ignore) 4: editAt as DateTime?,
    });
  }
}

extension UserUpdate on IsarCollection<int, User> {
  _UserUpdate get update => _UserUpdateImpl(this);

  _UserUpdateAll get updateAll => _UserUpdateAllImpl(this);
}

sealed class _UserQueryUpdate {
  int call({
    String? username,
    String? password,
    DateTime? createAt,
    DateTime? editAt,
  });
}

class _UserQueryUpdateImpl implements _UserQueryUpdate {
  const _UserQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<User> query;
  final int? limit;

  @override
  int call({
    Object? username = ignore,
    Object? password = ignore,
    Object? createAt = ignore,
    Object? editAt = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (username != ignore) 1: username as String?,
      if (password != ignore) 2: password as String?,
      if (createAt != ignore) 3: createAt as DateTime?,
      if (editAt != ignore) 4: editAt as DateTime?,
    });
  }
}

extension UserQueryUpdate on IsarQuery<User> {
  _UserQueryUpdate get updateFirst => _UserQueryUpdateImpl(this, limit: 1);

  _UserQueryUpdate get updateAll => _UserQueryUpdateImpl(this);
}

class _UserQueryBuilderUpdateImpl implements _UserQueryUpdate {
  const _UserQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<User, User, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? username = ignore,
    Object? password = ignore,
    Object? createAt = ignore,
    Object? editAt = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (username != ignore) 1: username as String?,
        if (password != ignore) 2: password as String?,
        if (createAt != ignore) 3: createAt as DateTime?,
        if (editAt != ignore) 4: editAt as DateTime?,
      });
    } finally {
      q.close();
    }
  }
}

extension UserQueryBuilderUpdate on QueryBuilder<User, User, QOperations> {
  _UserQueryUpdate get updateFirst =>
      _UserQueryBuilderUpdateImpl(this, limit: 1);

  _UserQueryUpdate get updateAll => _UserQueryBuilderUpdateImpl(this);
}

extension UserQueryFilter on QueryBuilder<User, User, QFilterCondition> {
  QueryBuilder<User, User, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<User, User, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<User, User, QAfterFilterCondition> idGreaterThanOrEqualTo(
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

  QueryBuilder<User, User, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<User, User, QAfterFilterCondition> idLessThanOrEqualTo(
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

  QueryBuilder<User, User, QAfterFilterCondition> idBetween(
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

  QueryBuilder<User, User, QAfterFilterCondition> usernameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> usernameGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> usernameGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> usernameLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> usernameLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> usernameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> usernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> usernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> usernameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> usernameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> passwordEqualTo(
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

  QueryBuilder<User, User, QAfterFilterCondition> passwordGreaterThan(
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

  QueryBuilder<User, User, QAfterFilterCondition> passwordGreaterThanOrEqualTo(
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

  QueryBuilder<User, User, QAfterFilterCondition> passwordLessThan(
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

  QueryBuilder<User, User, QAfterFilterCondition> passwordLessThanOrEqualTo(
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

  QueryBuilder<User, User, QAfterFilterCondition> passwordBetween(
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

  QueryBuilder<User, User, QAfterFilterCondition> passwordStartsWith(
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

  QueryBuilder<User, User, QAfterFilterCondition> passwordEndsWith(
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

  QueryBuilder<User, User, QAfterFilterCondition> passwordContains(String value,
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

  QueryBuilder<User, User, QAfterFilterCondition> passwordMatches(
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

  QueryBuilder<User, User, QAfterFilterCondition> passwordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> passwordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> createAtEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> createAtGreaterThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> createAtGreaterThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> createAtLessThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> createAtLessThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> createAtBetween(
    DateTime lower,
    DateTime upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> editAtEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> editAtGreaterThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> editAtGreaterThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> editAtLessThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> editAtLessThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<User, User, QAfterFilterCondition> editAtBetween(
    DateTime lower,
    DateTime upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension UserQueryObject on QueryBuilder<User, User, QFilterCondition> {}

extension UserQuerySortBy on QueryBuilder<User, User, QSortBy> {
  QueryBuilder<User, User, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUsername(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByUsernameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByPasswordDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByCreateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByCreateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByEditAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> sortByEditAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }
}

extension UserQuerySortThenBy on QueryBuilder<User, User, QSortThenBy> {
  QueryBuilder<User, User, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUsername(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByUsernameDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByPasswordDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByCreateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByCreateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByEditAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<User, User, QAfterSortBy> thenByEditAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }
}

extension UserQueryWhereDistinct on QueryBuilder<User, User, QDistinct> {
  QueryBuilder<User, User, QAfterDistinct> distinctByUsername(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<User, User, QAfterDistinct> distinctByPassword(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<User, User, QAfterDistinct> distinctByCreateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<User, User, QAfterDistinct> distinctByEditAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }
}

extension UserQueryProperty1 on QueryBuilder<User, User, QProperty> {
  QueryBuilder<User, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<User, String, QAfterProperty> usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<User, String, QAfterProperty> passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<User, DateTime, QAfterProperty> createAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<User, DateTime, QAfterProperty> editAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}

extension UserQueryProperty2<R> on QueryBuilder<User, R, QAfterProperty> {
  QueryBuilder<User, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<User, (R, String), QAfterProperty> usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<User, (R, String), QAfterProperty> passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<User, (R, DateTime), QAfterProperty> createAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<User, (R, DateTime), QAfterProperty> editAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}

extension UserQueryProperty3<R1, R2>
    on QueryBuilder<User, (R1, R2), QAfterProperty> {
  QueryBuilder<User, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<User, (R1, R2, String), QOperations> usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<User, (R1, R2, String), QOperations> passwordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<User, (R1, R2, DateTime), QOperations> createAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<User, (R1, R2, DateTime), QOperations> editAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetUserProfileCollection on Isar {
  IsarCollection<int, UserProfile> get userProfiles => this.collection();
}

const UserProfileSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'UserProfile',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'userId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'description',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'createAt',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'editAt',
        type: IsarType.dateTime,
      ),
      IsarPropertySchema(
        name: 'avatarId',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, UserProfile>(
    serialize: serializeUserProfile,
    deserialize: deserializeUserProfile,
    deserializeProperty: deserializeUserProfileProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeUserProfile(IsarWriter writer, UserProfile object) {
  IsarCore.writeLong(writer, 1, object.userId);
  IsarCore.writeString(writer, 2, object.description);
  IsarCore.writeLong(writer, 3, object.createAt.toUtc().microsecondsSinceEpoch);
  IsarCore.writeLong(writer, 4, object.editAt.toUtc().microsecondsSinceEpoch);
  IsarCore.writeString(writer, 5, object.avatarId);
  return object.id;
}

@isarProtected
UserProfile deserializeUserProfile(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final int _userId;
  _userId = IsarCore.readLong(reader, 1);
  final String _description;
  _description = IsarCore.readString(reader, 2) ?? '';
  final DateTime _createAt;
  {
    final value = IsarCore.readLong(reader, 3);
    if (value == -9223372036854775808) {
      _createAt = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _createAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final DateTime _editAt;
  {
    final value = IsarCore.readLong(reader, 4);
    if (value == -9223372036854775808) {
      _editAt = DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
    } else {
      _editAt =
          DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true).toLocal();
    }
  }
  final String _avatarId;
  _avatarId = IsarCore.readString(reader, 5) ?? '';
  final object = UserProfile(
    id: _id,
    userId: _userId,
    description: _description,
    createAt: _createAt,
    editAt: _editAt,
    avatarId: _avatarId,
  );
  return object;
}

@isarProtected
dynamic deserializeUserProfileProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readLong(reader, 1);
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      {
        final value = IsarCore.readLong(reader, 3);
        if (value == -9223372036854775808) {
          return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 4:
      {
        final value = IsarCore.readLong(reader, 4);
        if (value == -9223372036854775808) {
          return DateTime.fromMillisecondsSinceEpoch(0, isUtc: true).toLocal();
        } else {
          return DateTime.fromMicrosecondsSinceEpoch(value, isUtc: true)
              .toLocal();
        }
      }
    case 5:
      return IsarCore.readString(reader, 5) ?? '';
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _UserProfileUpdate {
  bool call({
    required int id,
    int? userId,
    String? description,
    DateTime? createAt,
    DateTime? editAt,
    String? avatarId,
  });
}

class _UserProfileUpdateImpl implements _UserProfileUpdate {
  const _UserProfileUpdateImpl(this.collection);

  final IsarCollection<int, UserProfile> collection;

  @override
  bool call({
    required int id,
    Object? userId = ignore,
    Object? description = ignore,
    Object? createAt = ignore,
    Object? editAt = ignore,
    Object? avatarId = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (userId != ignore) 1: userId as int?,
          if (description != ignore) 2: description as String?,
          if (createAt != ignore) 3: createAt as DateTime?,
          if (editAt != ignore) 4: editAt as DateTime?,
          if (avatarId != ignore) 5: avatarId as String?,
        }) >
        0;
  }
}

sealed class _UserProfileUpdateAll {
  int call({
    required List<int> id,
    int? userId,
    String? description,
    DateTime? createAt,
    DateTime? editAt,
    String? avatarId,
  });
}

class _UserProfileUpdateAllImpl implements _UserProfileUpdateAll {
  const _UserProfileUpdateAllImpl(this.collection);

  final IsarCollection<int, UserProfile> collection;

  @override
  int call({
    required List<int> id,
    Object? userId = ignore,
    Object? description = ignore,
    Object? createAt = ignore,
    Object? editAt = ignore,
    Object? avatarId = ignore,
  }) {
    return collection.updateProperties(id, {
      if (userId != ignore) 1: userId as int?,
      if (description != ignore) 2: description as String?,
      if (createAt != ignore) 3: createAt as DateTime?,
      if (editAt != ignore) 4: editAt as DateTime?,
      if (avatarId != ignore) 5: avatarId as String?,
    });
  }
}

extension UserProfileUpdate on IsarCollection<int, UserProfile> {
  _UserProfileUpdate get update => _UserProfileUpdateImpl(this);

  _UserProfileUpdateAll get updateAll => _UserProfileUpdateAllImpl(this);
}

sealed class _UserProfileQueryUpdate {
  int call({
    int? userId,
    String? description,
    DateTime? createAt,
    DateTime? editAt,
    String? avatarId,
  });
}

class _UserProfileQueryUpdateImpl implements _UserProfileQueryUpdate {
  const _UserProfileQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<UserProfile> query;
  final int? limit;

  @override
  int call({
    Object? userId = ignore,
    Object? description = ignore,
    Object? createAt = ignore,
    Object? editAt = ignore,
    Object? avatarId = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (userId != ignore) 1: userId as int?,
      if (description != ignore) 2: description as String?,
      if (createAt != ignore) 3: createAt as DateTime?,
      if (editAt != ignore) 4: editAt as DateTime?,
      if (avatarId != ignore) 5: avatarId as String?,
    });
  }
}

extension UserProfileQueryUpdate on IsarQuery<UserProfile> {
  _UserProfileQueryUpdate get updateFirst =>
      _UserProfileQueryUpdateImpl(this, limit: 1);

  _UserProfileQueryUpdate get updateAll => _UserProfileQueryUpdateImpl(this);
}

class _UserProfileQueryBuilderUpdateImpl implements _UserProfileQueryUpdate {
  const _UserProfileQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<UserProfile, UserProfile, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? userId = ignore,
    Object? description = ignore,
    Object? createAt = ignore,
    Object? editAt = ignore,
    Object? avatarId = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (userId != ignore) 1: userId as int?,
        if (description != ignore) 2: description as String?,
        if (createAt != ignore) 3: createAt as DateTime?,
        if (editAt != ignore) 4: editAt as DateTime?,
        if (avatarId != ignore) 5: avatarId as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension UserProfileQueryBuilderUpdate
    on QueryBuilder<UserProfile, UserProfile, QOperations> {
  _UserProfileQueryUpdate get updateFirst =>
      _UserProfileQueryBuilderUpdateImpl(this, limit: 1);

  _UserProfileQueryUpdate get updateAll =>
      _UserProfileQueryBuilderUpdateImpl(this);
}

extension UserProfileQueryFilter
    on QueryBuilder<UserProfile, UserProfile, QFilterCondition> {
  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      idLessThanOrEqualTo(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> idBetween(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> userIdEqualTo(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      userIdGreaterThan(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      userIdGreaterThanOrEqualTo(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> userIdLessThan(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      userIdLessThanOrEqualTo(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> userIdBetween(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      descriptionEqualTo(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      descriptionGreaterThan(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      descriptionGreaterThanOrEqualTo(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      descriptionLessThan(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      descriptionLessThanOrEqualTo(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      descriptionBetween(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      descriptionStartsWith(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      descriptionEndsWith(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> createAtEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      createAtGreaterThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      createAtGreaterThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      createAtLessThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      createAtLessThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> createAtBetween(
    DateTime lower,
    DateTime upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> editAtEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      editAtGreaterThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      editAtGreaterThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> editAtLessThan(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      editAtLessThanOrEqualTo(
    DateTime value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> editAtBetween(
    DateTime lower,
    DateTime upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> avatarIdEqualTo(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      avatarIdGreaterThan(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      avatarIdGreaterThanOrEqualTo(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      avatarIdLessThan(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      avatarIdLessThanOrEqualTo(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> avatarIdBetween(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      avatarIdStartsWith(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      avatarIdEndsWith(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      avatarIdContains(String value, {bool caseSensitive = true}) {
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition> avatarIdMatches(
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

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      avatarIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterFilterCondition>
      avatarIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }
}

extension UserProfileQueryObject
    on QueryBuilder<UserProfile, UserProfile, QFilterCondition> {}

extension UserProfileQuerySortBy
    on QueryBuilder<UserProfile, UserProfile, QSortBy> {
  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByDescriptionDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByCreateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByCreateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByEditAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByEditAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByAvatarId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> sortByAvatarIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension UserProfileQuerySortThenBy
    on QueryBuilder<UserProfile, UserProfile, QSortThenBy> {
  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByDescriptionDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByCreateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByCreateAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByEditAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByEditAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByAvatarId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterSortBy> thenByAvatarIdDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension UserProfileQueryWhereDistinct
    on QueryBuilder<UserProfile, UserProfile, QDistinct> {
  QueryBuilder<UserProfile, UserProfile, QAfterDistinct> distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterDistinct> distinctByCreateAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterDistinct> distinctByEditAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4);
    });
  }

  QueryBuilder<UserProfile, UserProfile, QAfterDistinct> distinctByAvatarId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }
}

extension UserProfileQueryProperty1
    on QueryBuilder<UserProfile, UserProfile, QProperty> {
  QueryBuilder<UserProfile, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<UserProfile, int, QAfterProperty> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<UserProfile, String, QAfterProperty> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<UserProfile, DateTime, QAfterProperty> createAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<UserProfile, DateTime, QAfterProperty> editAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<UserProfile, String, QAfterProperty> avatarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension UserProfileQueryProperty2<R>
    on QueryBuilder<UserProfile, R, QAfterProperty> {
  QueryBuilder<UserProfile, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<UserProfile, (R, int), QAfterProperty> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<UserProfile, (R, String), QAfterProperty> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<UserProfile, (R, DateTime), QAfterProperty> createAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<UserProfile, (R, DateTime), QAfterProperty> editAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<UserProfile, (R, String), QAfterProperty> avatarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

extension UserProfileQueryProperty3<R1, R2>
    on QueryBuilder<UserProfile, (R1, R2), QAfterProperty> {
  QueryBuilder<UserProfile, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<UserProfile, (R1, R2, int), QOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<UserProfile, (R1, R2, String), QOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<UserProfile, (R1, R2, DateTime), QOperations>
      createAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<UserProfile, (R1, R2, DateTime), QOperations> editAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<UserProfile, (R1, R2, String), QOperations> avatarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetUserFavoriteCollection on Isar {
  IsarCollection<int, UserFavorite> get userFavorites => this.collection();
}

const UserFavoriteSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'UserFavorite',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'userId',
        type: IsarType.long,
      ),
      IsarPropertySchema(
        name: 'hitokotoId',
        type: IsarType.long,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, UserFavorite>(
    serialize: serializeUserFavorite,
    deserialize: deserializeUserFavorite,
    deserializeProperty: deserializeUserFavoriteProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeUserFavorite(IsarWriter writer, UserFavorite object) {
  IsarCore.writeLong(writer, 1, object.userId);
  IsarCore.writeLong(writer, 2, object.hitokotoId);
  return object.id;
}

@isarProtected
UserFavorite deserializeUserFavorite(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final int _userId;
  _userId = IsarCore.readLong(reader, 1);
  final int _hitokotoId;
  _hitokotoId = IsarCore.readLong(reader, 2);
  final object = UserFavorite(
    id: _id,
    userId: _userId,
    hitokotoId: _hitokotoId,
  );
  return object;
}

@isarProtected
dynamic deserializeUserFavoriteProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readLong(reader, 1);
    case 2:
      return IsarCore.readLong(reader, 2);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _UserFavoriteUpdate {
  bool call({
    required int id,
    int? userId,
    int? hitokotoId,
  });
}

class _UserFavoriteUpdateImpl implements _UserFavoriteUpdate {
  const _UserFavoriteUpdateImpl(this.collection);

  final IsarCollection<int, UserFavorite> collection;

  @override
  bool call({
    required int id,
    Object? userId = ignore,
    Object? hitokotoId = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (userId != ignore) 1: userId as int?,
          if (hitokotoId != ignore) 2: hitokotoId as int?,
        }) >
        0;
  }
}

sealed class _UserFavoriteUpdateAll {
  int call({
    required List<int> id,
    int? userId,
    int? hitokotoId,
  });
}

class _UserFavoriteUpdateAllImpl implements _UserFavoriteUpdateAll {
  const _UserFavoriteUpdateAllImpl(this.collection);

  final IsarCollection<int, UserFavorite> collection;

  @override
  int call({
    required List<int> id,
    Object? userId = ignore,
    Object? hitokotoId = ignore,
  }) {
    return collection.updateProperties(id, {
      if (userId != ignore) 1: userId as int?,
      if (hitokotoId != ignore) 2: hitokotoId as int?,
    });
  }
}

extension UserFavoriteUpdate on IsarCollection<int, UserFavorite> {
  _UserFavoriteUpdate get update => _UserFavoriteUpdateImpl(this);

  _UserFavoriteUpdateAll get updateAll => _UserFavoriteUpdateAllImpl(this);
}

sealed class _UserFavoriteQueryUpdate {
  int call({
    int? userId,
    int? hitokotoId,
  });
}

class _UserFavoriteQueryUpdateImpl implements _UserFavoriteQueryUpdate {
  const _UserFavoriteQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<UserFavorite> query;
  final int? limit;

  @override
  int call({
    Object? userId = ignore,
    Object? hitokotoId = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (userId != ignore) 1: userId as int?,
      if (hitokotoId != ignore) 2: hitokotoId as int?,
    });
  }
}

extension UserFavoriteQueryUpdate on IsarQuery<UserFavorite> {
  _UserFavoriteQueryUpdate get updateFirst =>
      _UserFavoriteQueryUpdateImpl(this, limit: 1);

  _UserFavoriteQueryUpdate get updateAll => _UserFavoriteQueryUpdateImpl(this);
}

class _UserFavoriteQueryBuilderUpdateImpl implements _UserFavoriteQueryUpdate {
  const _UserFavoriteQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<UserFavorite, UserFavorite, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? userId = ignore,
    Object? hitokotoId = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (userId != ignore) 1: userId as int?,
        if (hitokotoId != ignore) 2: hitokotoId as int?,
      });
    } finally {
      q.close();
    }
  }
}

extension UserFavoriteQueryBuilderUpdate
    on QueryBuilder<UserFavorite, UserFavorite, QOperations> {
  _UserFavoriteQueryUpdate get updateFirst =>
      _UserFavoriteQueryBuilderUpdateImpl(this, limit: 1);

  _UserFavoriteQueryUpdate get updateAll =>
      _UserFavoriteQueryBuilderUpdateImpl(this);
}

extension UserFavoriteQueryFilter
    on QueryBuilder<UserFavorite, UserFavorite, QFilterCondition> {
  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition>
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

  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition>
      idLessThanOrEqualTo(
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

  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition> idBetween(
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

  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition> userIdEqualTo(
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

  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition>
      userIdGreaterThan(
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

  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition>
      userIdGreaterThanOrEqualTo(
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

  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition>
      userIdLessThan(
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

  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition>
      userIdLessThanOrEqualTo(
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

  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition> userIdBetween(
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

  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition>
      hitokotoIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition>
      hitokotoIdGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition>
      hitokotoIdGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition>
      hitokotoIdLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition>
      hitokotoIdLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<UserFavorite, UserFavorite, QAfterFilterCondition>
      hitokotoIdBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }
}

extension UserFavoriteQueryObject
    on QueryBuilder<UserFavorite, UserFavorite, QFilterCondition> {}

extension UserFavoriteQuerySortBy
    on QueryBuilder<UserFavorite, UserFavorite, QSortBy> {
  QueryBuilder<UserFavorite, UserFavorite, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<UserFavorite, UserFavorite, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<UserFavorite, UserFavorite, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<UserFavorite, UserFavorite, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<UserFavorite, UserFavorite, QAfterSortBy> sortByHitokotoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<UserFavorite, UserFavorite, QAfterSortBy>
      sortByHitokotoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }
}

extension UserFavoriteQuerySortThenBy
    on QueryBuilder<UserFavorite, UserFavorite, QSortThenBy> {
  QueryBuilder<UserFavorite, UserFavorite, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<UserFavorite, UserFavorite, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<UserFavorite, UserFavorite, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1);
    });
  }

  QueryBuilder<UserFavorite, UserFavorite, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc);
    });
  }

  QueryBuilder<UserFavorite, UserFavorite, QAfterSortBy> thenByHitokotoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2);
    });
  }

  QueryBuilder<UserFavorite, UserFavorite, QAfterSortBy>
      thenByHitokotoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc);
    });
  }
}

extension UserFavoriteQueryWhereDistinct
    on QueryBuilder<UserFavorite, UserFavorite, QDistinct> {
  QueryBuilder<UserFavorite, UserFavorite, QAfterDistinct> distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1);
    });
  }

  QueryBuilder<UserFavorite, UserFavorite, QAfterDistinct>
      distinctByHitokotoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2);
    });
  }
}

extension UserFavoriteQueryProperty1
    on QueryBuilder<UserFavorite, UserFavorite, QProperty> {
  QueryBuilder<UserFavorite, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<UserFavorite, int, QAfterProperty> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<UserFavorite, int, QAfterProperty> hitokotoIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension UserFavoriteQueryProperty2<R>
    on QueryBuilder<UserFavorite, R, QAfterProperty> {
  QueryBuilder<UserFavorite, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<UserFavorite, (R, int), QAfterProperty> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<UserFavorite, (R, int), QAfterProperty> hitokotoIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

extension UserFavoriteQueryProperty3<R1, R2>
    on QueryBuilder<UserFavorite, (R1, R2), QAfterProperty> {
  QueryBuilder<UserFavorite, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<UserFavorite, (R1, R2, int), QOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<UserFavorite, (R1, R2, int), QOperations> hitokotoIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      username: json['username'] as String,
      password: json['password'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
      editAt: DateTime.parse(json['editAt'] as String),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'createAt': instance.createAt.toIso8601String(),
      'editAt': instance.editAt.toIso8601String(),
    };

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      description: json['description'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
      editAt: DateTime.parse(json['editAt'] as String),
      avatarId: json['avatarId'] as String? ?? '',
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'description': instance.description,
      'createAt': instance.createAt.toIso8601String(),
      'editAt': instance.editAt.toIso8601String(),
      'avatarId': instance.avatarId,
    };

_$UserFavoriteImpl _$$UserFavoriteImplFromJson(Map<String, dynamic> json) =>
    _$UserFavoriteImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      hitokotoId: (json['hitokotoId'] as num).toInt(),
    );

Map<String, dynamic> _$$UserFavoriteImplToJson(_$UserFavoriteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'hitokotoId': instance.hitokotoId,
    };
