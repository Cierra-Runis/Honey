// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @Id()
  int get id => throw _privateConstructorUsedError;
  @Index(unique: true)
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  DateTime get createAt => throw _privateConstructorUsedError;
  DateTime get editAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@Id() int id,
      @Index(unique: true) String username,
      String password,
      DateTime createAt,
      DateTime editAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? password = null,
    Object? createAt = null,
    Object? editAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      editAt: null == editAt
          ? _value.editAt
          : editAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Id() int id,
      @Index(unique: true) String username,
      String password,
      DateTime createAt,
      DateTime editAt});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? password = null,
    Object? createAt = null,
    Object? editAt = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      editAt: null == editAt
          ? _value.editAt
          : editAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {@Id() required this.id,
      @Index(unique: true) required this.username,
      required this.password,
      required this.createAt,
      required this.editAt});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @Id()
  final int id;
  @override
  @Index(unique: true)
  final String username;
  @override
  final String password;
  @override
  final DateTime createAt;
  @override
  final DateTime editAt;

  @override
  String toString() {
    return 'User(id: $id, username: $username, password: $password, createAt: $createAt, editAt: $editAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.editAt, editAt) || other.editAt == editAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, username, password, createAt, editAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@Id() required final int id,
      @Index(unique: true) required final String username,
      required final String password,
      required final DateTime createAt,
      required final DateTime editAt}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @Id()
  int get id;
  @override
  @Index(unique: true)
  String get username;
  @override
  String get password;
  @override
  DateTime get createAt;
  @override
  DateTime get editAt;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfile {
  @Id()
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get createAt => throw _privateConstructorUsedError;
  DateTime get editAt => throw _privateConstructorUsedError;
  String get avatarId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {@Id() int id,
      int userId,
      String name,
      String description,
      DateTime createAt,
      DateTime editAt,
      String avatarId});
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? description = null,
    Object? createAt = null,
    Object? editAt = null,
    Object? avatarId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      editAt: null == editAt
          ? _value.editAt
          : editAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatarId: null == avatarId
          ? _value.avatarId
          : avatarId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Id() int id,
      int userId,
      String name,
      String description,
      DateTime createAt,
      DateTime editAt,
      String avatarId});
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? description = null,
    Object? createAt = null,
    Object? editAt = null,
    Object? avatarId = null,
  }) {
    return _then(_$UserProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      editAt: null == editAt
          ? _value.editAt
          : editAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatarId: null == avatarId
          ? _value.avatarId
          : avatarId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl(
      {@Id() required this.id,
      required this.userId,
      required this.name,
      required this.description,
      required this.createAt,
      required this.editAt,
      this.avatarId = ''});

  factory _$UserProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileImplFromJson(json);

  @override
  @Id()
  final int id;
  @override
  final int userId;
  @override
  final String name;
  @override
  final String description;
  @override
  final DateTime createAt;
  @override
  final DateTime editAt;
  @override
  @JsonKey()
  final String avatarId;

  @override
  String toString() {
    return 'UserProfile(id: $id, userId: $userId, name: $name, description: $description, createAt: $createAt, editAt: $editAt, avatarId: $avatarId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.editAt, editAt) || other.editAt == editAt) &&
            (identical(other.avatarId, avatarId) ||
                other.avatarId == avatarId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, userId, name, description, createAt, editAt, avatarId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileImplToJson(
      this,
    );
  }
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
      {@Id() required final int id,
      required final int userId,
      required final String name,
      required final String description,
      required final DateTime createAt,
      required final DateTime editAt,
      final String avatarId}) = _$UserProfileImpl;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$UserProfileImpl.fromJson;

  @override
  @Id()
  int get id;
  @override
  int get userId;
  @override
  String get name;
  @override
  String get description;
  @override
  DateTime get createAt;
  @override
  DateTime get editAt;
  @override
  String get avatarId;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserFavorite _$UserFavoriteFromJson(Map<String, dynamic> json) {
  return _UserFavorite.fromJson(json);
}

/// @nodoc
mixin _$UserFavorite {
  @Id()
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  int get hitokotoId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFavoriteCopyWith<UserFavorite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFavoriteCopyWith<$Res> {
  factory $UserFavoriteCopyWith(
          UserFavorite value, $Res Function(UserFavorite) then) =
      _$UserFavoriteCopyWithImpl<$Res, UserFavorite>;
  @useResult
  $Res call({@Id() int id, int userId, int hitokotoId});
}

/// @nodoc
class _$UserFavoriteCopyWithImpl<$Res, $Val extends UserFavorite>
    implements $UserFavoriteCopyWith<$Res> {
  _$UserFavoriteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? hitokotoId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      hitokotoId: null == hitokotoId
          ? _value.hitokotoId
          : hitokotoId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserFavoriteImplCopyWith<$Res>
    implements $UserFavoriteCopyWith<$Res> {
  factory _$$UserFavoriteImplCopyWith(
          _$UserFavoriteImpl value, $Res Function(_$UserFavoriteImpl) then) =
      __$$UserFavoriteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@Id() int id, int userId, int hitokotoId});
}

/// @nodoc
class __$$UserFavoriteImplCopyWithImpl<$Res>
    extends _$UserFavoriteCopyWithImpl<$Res, _$UserFavoriteImpl>
    implements _$$UserFavoriteImplCopyWith<$Res> {
  __$$UserFavoriteImplCopyWithImpl(
      _$UserFavoriteImpl _value, $Res Function(_$UserFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? hitokotoId = null,
  }) {
    return _then(_$UserFavoriteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      hitokotoId: null == hitokotoId
          ? _value.hitokotoId
          : hitokotoId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserFavoriteImpl implements _UserFavorite {
  const _$UserFavoriteImpl(
      {@Id() required this.id, required this.userId, required this.hitokotoId});

  factory _$UserFavoriteImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserFavoriteImplFromJson(json);

  @override
  @Id()
  final int id;
  @override
  final int userId;
  @override
  final int hitokotoId;

  @override
  String toString() {
    return 'UserFavorite(id: $id, userId: $userId, hitokotoId: $hitokotoId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFavoriteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.hitokotoId, hitokotoId) ||
                other.hitokotoId == hitokotoId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, hitokotoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFavoriteImplCopyWith<_$UserFavoriteImpl> get copyWith =>
      __$$UserFavoriteImplCopyWithImpl<_$UserFavoriteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFavoriteImplToJson(
      this,
    );
  }
}

abstract class _UserFavorite implements UserFavorite {
  const factory _UserFavorite(
      {@Id() required final int id,
      required final int userId,
      required final int hitokotoId}) = _$UserFavoriteImpl;

  factory _UserFavorite.fromJson(Map<String, dynamic> json) =
      _$UserFavoriteImpl.fromJson;

  @override
  @Id()
  int get id;
  @override
  int get userId;
  @override
  int get hitokotoId;
  @override
  @JsonKey(ignore: true)
  _$$UserFavoriteImplCopyWith<_$UserFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
