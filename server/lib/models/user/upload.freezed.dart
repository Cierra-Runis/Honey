// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserUploadRequest _$UserUploadRequestFromJson(Map<String, dynamic> json) {
  return _UserUploadRequest.fromJson(json);
}

/// @nodoc
mixin _$UserUploadRequest {
  int get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserUploadRequestCopyWith<UserUploadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUploadRequestCopyWith<$Res> {
  factory $UserUploadRequestCopyWith(
          UserUploadRequest value, $Res Function(UserUploadRequest) then) =
      _$UserUploadRequestCopyWithImpl<$Res, UserUploadRequest>;
  @useResult
  $Res call({int userId});
}

/// @nodoc
class _$UserUploadRequestCopyWithImpl<$Res, $Val extends UserUploadRequest>
    implements $UserUploadRequestCopyWith<$Res> {
  _$UserUploadRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$UserUploadRequestImplCopyWith<$Res>
    implements $UserUploadRequestCopyWith<$Res> {
  factory _$$UserUploadRequestImplCopyWith(_$UserUploadRequestImpl value,
          $Res Function(_$UserUploadRequestImpl) then) =
      __$$UserUploadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId});
}

/// @nodoc
class __$$UserUploadRequestImplCopyWithImpl<$Res>
    extends _$UserUploadRequestCopyWithImpl<$Res, _$UserUploadRequestImpl>
    implements _$$UserUploadRequestImplCopyWith<$Res> {
  __$$UserUploadRequestImplCopyWithImpl(_$UserUploadRequestImpl _value,
      $Res Function(_$UserUploadRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$UserUploadRequestImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserUploadRequestImpl implements _UserUploadRequest {
  const _$UserUploadRequestImpl({required this.userId});

  factory _$UserUploadRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserUploadRequestImplFromJson(json);

  @override
  final int userId;

  @override
  String toString() {
    return 'UserUploadRequest(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUploadRequestImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUploadRequestImplCopyWith<_$UserUploadRequestImpl> get copyWith =>
      __$$UserUploadRequestImplCopyWithImpl<_$UserUploadRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserUploadRequestImplToJson(
      this,
    );
  }
}

abstract class _UserUploadRequest implements UserUploadRequest {
  const factory _UserUploadRequest({required final int userId}) =
      _$UserUploadRequestImpl;

  factory _UserUploadRequest.fromJson(Map<String, dynamic> json) =
      _$UserUploadRequestImpl.fromJson;

  @override
  int get userId;
  @override
  @JsonKey(ignore: true)
  _$$UserUploadRequestImplCopyWith<_$UserUploadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserUploadResponse _$UserUploadResponseFromJson(Map<String, dynamic> json) {
  return _UserUploadResponse.fromJson(json);
}

/// @nodoc
mixin _$UserUploadResponse {
  String get message => throw _privateConstructorUsedError;
  List<Hitokoto> get hitokotos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserUploadResponseCopyWith<UserUploadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUploadResponseCopyWith<$Res> {
  factory $UserUploadResponseCopyWith(
          UserUploadResponse value, $Res Function(UserUploadResponse) then) =
      _$UserUploadResponseCopyWithImpl<$Res, UserUploadResponse>;
  @useResult
  $Res call({String message, List<Hitokoto> hitokotos});
}

/// @nodoc
class _$UserUploadResponseCopyWithImpl<$Res, $Val extends UserUploadResponse>
    implements $UserUploadResponseCopyWith<$Res> {
  _$UserUploadResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? hitokotos = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      hitokotos: null == hitokotos
          ? _value.hitokotos
          : hitokotos // ignore: cast_nullable_to_non_nullable
              as List<Hitokoto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserUploadResponseImplCopyWith<$Res>
    implements $UserUploadResponseCopyWith<$Res> {
  factory _$$UserUploadResponseImplCopyWith(_$UserUploadResponseImpl value,
          $Res Function(_$UserUploadResponseImpl) then) =
      __$$UserUploadResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<Hitokoto> hitokotos});
}

/// @nodoc
class __$$UserUploadResponseImplCopyWithImpl<$Res>
    extends _$UserUploadResponseCopyWithImpl<$Res, _$UserUploadResponseImpl>
    implements _$$UserUploadResponseImplCopyWith<$Res> {
  __$$UserUploadResponseImplCopyWithImpl(_$UserUploadResponseImpl _value,
      $Res Function(_$UserUploadResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? hitokotos = null,
  }) {
    return _then(_$UserUploadResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      hitokotos: null == hitokotos
          ? _value._hitokotos
          : hitokotos // ignore: cast_nullable_to_non_nullable
              as List<Hitokoto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserUploadResponseImpl implements _UserUploadResponse {
  const _$UserUploadResponseImpl(
      {required this.message, required final List<Hitokoto> hitokotos})
      : _hitokotos = hitokotos;

  factory _$UserUploadResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserUploadResponseImplFromJson(json);

  @override
  final String message;
  final List<Hitokoto> _hitokotos;
  @override
  List<Hitokoto> get hitokotos {
    if (_hitokotos is EqualUnmodifiableListView) return _hitokotos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hitokotos);
  }

  @override
  String toString() {
    return 'UserUploadResponse(message: $message, hitokotos: $hitokotos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUploadResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._hitokotos, _hitokotos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, const DeepCollectionEquality().hash(_hitokotos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUploadResponseImplCopyWith<_$UserUploadResponseImpl> get copyWith =>
      __$$UserUploadResponseImplCopyWithImpl<_$UserUploadResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserUploadResponseImplToJson(
      this,
    );
  }
}

abstract class _UserUploadResponse implements UserUploadResponse {
  const factory _UserUploadResponse(
      {required final String message,
      required final List<Hitokoto> hitokotos}) = _$UserUploadResponseImpl;

  factory _UserUploadResponse.fromJson(Map<String, dynamic> json) =
      _$UserUploadResponseImpl.fromJson;

  @override
  String get message;
  @override
  List<Hitokoto> get hitokotos;
  @override
  @JsonKey(ignore: true)
  _$$UserUploadResponseImplCopyWith<_$UserUploadResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
