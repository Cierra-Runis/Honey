// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserFavoriteGetRequest _$UserFavoriteGetRequestFromJson(
    Map<String, dynamic> json) {
  return _UserFavoriteRequest.fromJson(json);
}

/// @nodoc
mixin _$UserFavoriteGetRequest {
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFavoriteGetRequestCopyWith<UserFavoriteGetRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFavoriteGetRequestCopyWith<$Res> {
  factory $UserFavoriteGetRequestCopyWith(UserFavoriteGetRequest value,
          $Res Function(UserFavoriteGetRequest) then) =
      _$UserFavoriteGetRequestCopyWithImpl<$Res, UserFavoriteGetRequest>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class _$UserFavoriteGetRequestCopyWithImpl<$Res,
        $Val extends UserFavoriteGetRequest>
    implements $UserFavoriteGetRequestCopyWith<$Res> {
  _$UserFavoriteGetRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserFavoriteRequestImplCopyWith<$Res>
    implements $UserFavoriteGetRequestCopyWith<$Res> {
  factory _$$UserFavoriteRequestImplCopyWith(_$UserFavoriteRequestImpl value,
          $Res Function(_$UserFavoriteRequestImpl) then) =
      __$$UserFavoriteRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$UserFavoriteRequestImplCopyWithImpl<$Res>
    extends _$UserFavoriteGetRequestCopyWithImpl<$Res,
        _$UserFavoriteRequestImpl>
    implements _$$UserFavoriteRequestImplCopyWith<$Res> {
  __$$UserFavoriteRequestImplCopyWithImpl(_$UserFavoriteRequestImpl _value,
      $Res Function(_$UserFavoriteRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$UserFavoriteRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserFavoriteRequestImpl implements _UserFavoriteRequest {
  const _$UserFavoriteRequestImpl({required this.userId});

  factory _$UserFavoriteRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserFavoriteRequestImplFromJson(json);

  @override
  final int userId;

  @override
  String toString() {
    return 'UserFavoriteGetRequest(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFavoriteRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFavoriteRequestImplCopyWith<_$UserFavoriteRequestImpl> get copyWith =>
      __$$UserFavoriteRequestImplCopyWithImpl<_$UserFavoriteRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFavoriteRequestImplToJson(
      this,
    );
  }
}

abstract class _UserFavoriteRequest implements UserFavoriteGetRequest {
  const factory _UserFavoriteRequest({required final int userId}) =
      _$UserFavoriteRequestImpl;

  factory _UserFavoriteRequest.fromJson(Map<String, dynamic> json) =
      _$UserFavoriteRequestImpl.fromJson;

  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$UserFavoriteRequestImplCopyWith<_$UserFavoriteRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserFavoritePostRequest _$UserFavoritePostRequestFromJson(
    Map<String, dynamic> json) {
  return _UserFavoritePostRequest.fromJson(json);
}

/// @nodoc
mixin _$UserFavoritePostRequest {
  int get userId => throw _privateConstructorUsedError;
  int get hitokotoId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFavoritePostRequestCopyWith<UserFavoritePostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFavoritePostRequestCopyWith<$Res> {
  factory $UserFavoritePostRequestCopyWith(UserFavoritePostRequest value,
          $Res Function(UserFavoritePostRequest) then) =
      _$UserFavoritePostRequestCopyWithImpl<$Res, UserFavoritePostRequest>;
  @useResult
  $Res call({int userId, int hitokotoId});
}

/// @nodoc
class _$UserFavoritePostRequestCopyWithImpl<$Res,
        $Val extends UserFavoritePostRequest>
    implements $UserFavoritePostRequestCopyWith<$Res> {
  _$UserFavoritePostRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? hitokotoId = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$UserFavoritePostRequestImplCopyWith<$Res>
    implements $UserFavoritePostRequestCopyWith<$Res> {
  factory _$$UserFavoritePostRequestImplCopyWith(
          _$UserFavoritePostRequestImpl value,
          $Res Function(_$UserFavoritePostRequestImpl) then) =
      __$$UserFavoritePostRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, int hitokotoId});
}

/// @nodoc
class __$$UserFavoritePostRequestImplCopyWithImpl<$Res>
    extends _$UserFavoritePostRequestCopyWithImpl<$Res,
        _$UserFavoritePostRequestImpl>
    implements _$$UserFavoritePostRequestImplCopyWith<$Res> {
  __$$UserFavoritePostRequestImplCopyWithImpl(
      _$UserFavoritePostRequestImpl _value,
      $Res Function(_$UserFavoritePostRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? hitokotoId = null,
  }) {
    return _then(_$UserFavoritePostRequestImpl(
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
class _$UserFavoritePostRequestImpl implements _UserFavoritePostRequest {
  const _$UserFavoritePostRequestImpl(
      {required this.userId, required this.hitokotoId});

  factory _$UserFavoritePostRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserFavoritePostRequestImplFromJson(json);

  @override
  final int userId;
  @override
  final int hitokotoId;

  @override
  String toString() {
    return 'UserFavoritePostRequest(userId: $userId, hitokotoId: $hitokotoId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFavoritePostRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.hitokotoId, hitokotoId) ||
                other.hitokotoId == hitokotoId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, hitokotoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFavoritePostRequestImplCopyWith<_$UserFavoritePostRequestImpl>
      get copyWith => __$$UserFavoritePostRequestImplCopyWithImpl<
          _$UserFavoritePostRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFavoritePostRequestImplToJson(
      this,
    );
  }
}

abstract class _UserFavoritePostRequest implements UserFavoritePostRequest {
  const factory _UserFavoritePostRequest(
      {required final int userId,
      required final int hitokotoId}) = _$UserFavoritePostRequestImpl;

  factory _UserFavoritePostRequest.fromJson(Map<String, dynamic> json) =
      _$UserFavoritePostRequestImpl.fromJson;

  @override
  int get userId;
  @override
  int get hitokotoId;
  @override
  @JsonKey(ignore: true)
  _$$UserFavoritePostRequestImplCopyWith<_$UserFavoritePostRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserFavoriteResponse _$UserFavoriteResponseFromJson(Map<String, dynamic> json) {
  return _UserFavoriteResponse.fromJson(json);
}

/// @nodoc
mixin _$UserFavoriteResponse {
  String get message => throw _privateConstructorUsedError;
  List<UserFavorite> get favorites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFavoriteResponseCopyWith<UserFavoriteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFavoriteResponseCopyWith<$Res> {
  factory $UserFavoriteResponseCopyWith(UserFavoriteResponse value,
          $Res Function(UserFavoriteResponse) then) =
      _$UserFavoriteResponseCopyWithImpl<$Res, UserFavoriteResponse>;
  @useResult
  $Res call({String message, List<UserFavorite> favorites});
}

/// @nodoc
class _$UserFavoriteResponseCopyWithImpl<$Res,
        $Val extends UserFavoriteResponse>
    implements $UserFavoriteResponseCopyWith<$Res> {
  _$UserFavoriteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? favorites = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      favorites: null == favorites
          ? _value.favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<UserFavorite>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserFavoriteResponseImplCopyWith<$Res>
    implements $UserFavoriteResponseCopyWith<$Res> {
  factory _$$UserFavoriteResponseImplCopyWith(_$UserFavoriteResponseImpl value,
          $Res Function(_$UserFavoriteResponseImpl) then) =
      __$$UserFavoriteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<UserFavorite> favorites});
}

/// @nodoc
class __$$UserFavoriteResponseImplCopyWithImpl<$Res>
    extends _$UserFavoriteResponseCopyWithImpl<$Res, _$UserFavoriteResponseImpl>
    implements _$$UserFavoriteResponseImplCopyWith<$Res> {
  __$$UserFavoriteResponseImplCopyWithImpl(_$UserFavoriteResponseImpl _value,
      $Res Function(_$UserFavoriteResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? favorites = null,
  }) {
    return _then(_$UserFavoriteResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<UserFavorite>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserFavoriteResponseImpl implements _UserFavoriteResponse {
  const _$UserFavoriteResponseImpl(
      {required this.message, required final List<UserFavorite> favorites})
      : _favorites = favorites;

  factory _$UserFavoriteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserFavoriteResponseImplFromJson(json);

  @override
  final String message;
  final List<UserFavorite> _favorites;
  @override
  List<UserFavorite> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  String toString() {
    return 'UserFavoriteResponse(message: $message, favorites: $favorites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFavoriteResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_favorites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFavoriteResponseImplCopyWith<_$UserFavoriteResponseImpl>
      get copyWith =>
          __$$UserFavoriteResponseImplCopyWithImpl<_$UserFavoriteResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFavoriteResponseImplToJson(
      this,
    );
  }
}

abstract class _UserFavoriteResponse implements UserFavoriteResponse {
  const factory _UserFavoriteResponse(
          {required final String message,
          required final List<UserFavorite> favorites}) =
      _$UserFavoriteResponseImpl;

  factory _UserFavoriteResponse.fromJson(Map<String, dynamic> json) =
      _$UserFavoriteResponseImpl.fromJson;

  @override
  String get message;
  @override
  List<UserFavorite> get favorites;
  @override
  @JsonKey(ignore: true)
  _$$UserFavoriteResponseImplCopyWith<_$UserFavoriteResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
