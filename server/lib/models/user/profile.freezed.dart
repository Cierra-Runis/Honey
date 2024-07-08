// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfileGetRequest _$UserProfileGetRequestFromJson(
    Map<String, dynamic> json) {
  return _UserProfileGetRequest.fromJson(json);
}

/// @nodoc
mixin _$UserProfileGetRequest {
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileGetRequestCopyWith<UserProfileGetRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileGetRequestCopyWith<$Res> {
  factory $UserProfileGetRequestCopyWith(UserProfileGetRequest value,
          $Res Function(UserProfileGetRequest) then) =
      _$UserProfileGetRequestCopyWithImpl<$Res, UserProfileGetRequest>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class _$UserProfileGetRequestCopyWithImpl<$Res,
        $Val extends UserProfileGetRequest>
    implements $UserProfileGetRequestCopyWith<$Res> {
  _$UserProfileGetRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$UserProfileGetRequestImplCopyWith<$Res>
    implements $UserProfileGetRequestCopyWith<$Res> {
  factory _$$UserProfileGetRequestImplCopyWith(
          _$UserProfileGetRequestImpl value,
          $Res Function(_$UserProfileGetRequestImpl) then) =
      __$$UserProfileGetRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$UserProfileGetRequestImplCopyWithImpl<$Res>
    extends _$UserProfileGetRequestCopyWithImpl<$Res,
        _$UserProfileGetRequestImpl>
    implements _$$UserProfileGetRequestImplCopyWith<$Res> {
  __$$UserProfileGetRequestImplCopyWithImpl(_$UserProfileGetRequestImpl _value,
      $Res Function(_$UserProfileGetRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$UserProfileGetRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileGetRequestImpl extends _UserProfileGetRequest {
  const _$UserProfileGetRequestImpl({required this.userId}) : super._();

  factory _$UserProfileGetRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileGetRequestImplFromJson(json);

  @override
  final int userId;

  @override
  String toString() {
    return 'UserProfileGetRequest(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileGetRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileGetRequestImplCopyWith<_$UserProfileGetRequestImpl>
      get copyWith => __$$UserProfileGetRequestImplCopyWithImpl<
          _$UserProfileGetRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileGetRequestImplToJson(
      this,
    );
  }
}

abstract class _UserProfileGetRequest extends UserProfileGetRequest {
  const factory _UserProfileGetRequest({required final int userId}) =
      _$UserProfileGetRequestImpl;
  const _UserProfileGetRequest._() : super._();

  factory _UserProfileGetRequest.fromJson(Map<String, dynamic> json) =
      _$UserProfileGetRequestImpl.fromJson;

  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileGetRequestImplCopyWith<_$UserProfileGetRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserProfilePostRequest _$UserProfilePostRequestFromJson(
    Map<String, dynamic> json) {
  return _UserProfilePostRequest.fromJson(json);
}

/// @nodoc
mixin _$UserProfilePostRequest {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get avatarId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfilePostRequestCopyWith<UserProfilePostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfilePostRequestCopyWith<$Res> {
  factory $UserProfilePostRequestCopyWith(UserProfilePostRequest value,
          $Res Function(UserProfilePostRequest) then) =
      _$UserProfilePostRequestCopyWithImpl<$Res, UserProfilePostRequest>;
  @useResult
  $Res call({int id, int userId, String description, String avatarId});
}

/// @nodoc
class _$UserProfilePostRequestCopyWithImpl<$Res,
        $Val extends UserProfilePostRequest>
    implements $UserProfilePostRequestCopyWith<$Res> {
  _$UserProfilePostRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? description = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      avatarId: null == avatarId
          ? _value.avatarId
          : avatarId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserProfilePostRequestImplCopyWith<$Res>
    implements $UserProfilePostRequestCopyWith<$Res> {
  factory _$$UserProfilePostRequestImplCopyWith(
          _$UserProfilePostRequestImpl value,
          $Res Function(_$UserProfilePostRequestImpl) then) =
      __$$UserProfilePostRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int userId, String description, String avatarId});
}

/// @nodoc
class __$$UserProfilePostRequestImplCopyWithImpl<$Res>
    extends _$UserProfilePostRequestCopyWithImpl<$Res,
        _$UserProfilePostRequestImpl>
    implements _$$UserProfilePostRequestImplCopyWith<$Res> {
  __$$UserProfilePostRequestImplCopyWithImpl(
      _$UserProfilePostRequestImpl _value,
      $Res Function(_$UserProfilePostRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? description = null,
    Object? avatarId = null,
  }) {
    return _then(_$UserProfilePostRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      avatarId: null == avatarId
          ? _value.avatarId
          : avatarId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfilePostRequestImpl extends _UserProfilePostRequest {
  const _$UserProfilePostRequestImpl(
      {required this.id,
      required this.userId,
      required this.description,
      this.avatarId = ''})
      : super._();

  factory _$UserProfilePostRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfilePostRequestImplFromJson(json);

  @override
  final int id;
  @override
  final int userId;
  @override
  final String description;
  @override
  @JsonKey()
  final String avatarId;

  @override
  String toString() {
    return 'UserProfilePostRequest(id: $id, userId: $userId, description: $description, avatarId: $avatarId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfilePostRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.avatarId, avatarId) ||
                other.avatarId == avatarId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, description, avatarId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfilePostRequestImplCopyWith<_$UserProfilePostRequestImpl>
      get copyWith => __$$UserProfilePostRequestImplCopyWithImpl<
          _$UserProfilePostRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfilePostRequestImplToJson(
      this,
    );
  }
}

abstract class _UserProfilePostRequest extends UserProfilePostRequest {
  const factory _UserProfilePostRequest(
      {required final int id,
      required final int userId,
      required final String description,
      final String avatarId}) = _$UserProfilePostRequestImpl;
  const _UserProfilePostRequest._() : super._();

  factory _UserProfilePostRequest.fromJson(Map<String, dynamic> json) =
      _$UserProfilePostRequestImpl.fromJson;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get description;
  @override
  String get avatarId;
  @override
  @JsonKey(ignore: true)
  _$$UserProfilePostRequestImplCopyWith<_$UserProfilePostRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UserProfileResponse _$UserProfileResponseFromJson(Map<String, dynamic> json) {
  return _UserProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$UserProfileResponse {
  String get message => throw _privateConstructorUsedError;
  UserProfile? get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileResponseCopyWith<UserProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileResponseCopyWith<$Res> {
  factory $UserProfileResponseCopyWith(
          UserProfileResponse value, $Res Function(UserProfileResponse) then) =
      _$UserProfileResponseCopyWithImpl<$Res, UserProfileResponse>;
  @useResult
  $Res call({String message, UserProfile? profile});

  $UserProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class _$UserProfileResponseCopyWithImpl<$Res, $Val extends UserProfileResponse>
    implements $UserProfileResponseCopyWith<$Res> {
  _$UserProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $UserProfileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileResponseImplCopyWith<$Res>
    implements $UserProfileResponseCopyWith<$Res> {
  factory _$$UserProfileResponseImplCopyWith(_$UserProfileResponseImpl value,
          $Res Function(_$UserProfileResponseImpl) then) =
      __$$UserProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, UserProfile? profile});

  @override
  $UserProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$UserProfileResponseImplCopyWithImpl<$Res>
    extends _$UserProfileResponseCopyWithImpl<$Res, _$UserProfileResponseImpl>
    implements _$$UserProfileResponseImplCopyWith<$Res> {
  __$$UserProfileResponseImplCopyWithImpl(_$UserProfileResponseImpl _value,
      $Res Function(_$UserProfileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? profile = freezed,
  }) {
    return _then(_$UserProfileResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileResponseImpl extends _UserProfileResponse {
  const _$UserProfileResponseImpl({required this.message, this.profile})
      : super._();

  factory _$UserProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileResponseImplFromJson(json);

  @override
  final String message;
  @override
  final UserProfile? profile;

  @override
  String toString() {
    return 'UserProfileResponse(message: $message, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileResponseImplCopyWith<_$UserProfileResponseImpl> get copyWith =>
      __$$UserProfileResponseImplCopyWithImpl<_$UserProfileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _UserProfileResponse extends UserProfileResponse {
  const factory _UserProfileResponse(
      {required final String message,
      final UserProfile? profile}) = _$UserProfileResponseImpl;
  const _UserProfileResponse._() : super._();

  factory _UserProfileResponse.fromJson(Map<String, dynamic> json) =
      _$UserProfileResponseImpl.fromJson;

  @override
  String get message;
  @override
  UserProfile? get profile;
  @override
  @JsonKey(ignore: true)
  _$$UserProfileResponseImplCopyWith<_$UserProfileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
