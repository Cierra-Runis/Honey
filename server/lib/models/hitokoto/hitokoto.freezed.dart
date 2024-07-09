// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hitokoto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HitokotoPostRequest _$HitokotoPostRequestFromJson(Map<String, dynamic> json) {
  return _HitokotoPostRequest.fromJson(json);
}

/// @nodoc
mixin _$HitokotoPostRequest {
  String get hitokoto => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  int get creatorId => throw _privateConstructorUsedError;
  String? get sourceWho => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitokotoPostRequestCopyWith<HitokotoPostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitokotoPostRequestCopyWith<$Res> {
  factory $HitokotoPostRequestCopyWith(
          HitokotoPostRequest value, $Res Function(HitokotoPostRequest) then) =
      _$HitokotoPostRequestCopyWithImpl<$Res, HitokotoPostRequest>;
  @useResult
  $Res call(
      {String hitokoto,
      String type,
      String source,
      int creatorId,
      String? sourceWho});
}

/// @nodoc
class _$HitokotoPostRequestCopyWithImpl<$Res, $Val extends HitokotoPostRequest>
    implements $HitokotoPostRequestCopyWith<$Res> {
  _$HitokotoPostRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hitokoto = null,
    Object? type = null,
    Object? source = null,
    Object? creatorId = null,
    Object? sourceWho = freezed,
  }) {
    return _then(_value.copyWith(
      hitokoto: null == hitokoto
          ? _value.hitokoto
          : hitokoto // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int,
      sourceWho: freezed == sourceWho
          ? _value.sourceWho
          : sourceWho // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HitokotoPostRequestImplCopyWith<$Res>
    implements $HitokotoPostRequestCopyWith<$Res> {
  factory _$$HitokotoPostRequestImplCopyWith(_$HitokotoPostRequestImpl value,
          $Res Function(_$HitokotoPostRequestImpl) then) =
      __$$HitokotoPostRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String hitokoto,
      String type,
      String source,
      int creatorId,
      String? sourceWho});
}

/// @nodoc
class __$$HitokotoPostRequestImplCopyWithImpl<$Res>
    extends _$HitokotoPostRequestCopyWithImpl<$Res, _$HitokotoPostRequestImpl>
    implements _$$HitokotoPostRequestImplCopyWith<$Res> {
  __$$HitokotoPostRequestImplCopyWithImpl(_$HitokotoPostRequestImpl _value,
      $Res Function(_$HitokotoPostRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hitokoto = null,
    Object? type = null,
    Object? source = null,
    Object? creatorId = null,
    Object? sourceWho = freezed,
  }) {
    return _then(_$HitokotoPostRequestImpl(
      hitokoto: null == hitokoto
          ? _value.hitokoto
          : hitokoto // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as int,
      sourceWho: freezed == sourceWho
          ? _value.sourceWho
          : sourceWho // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HitokotoPostRequestImpl implements _HitokotoPostRequest {
  const _$HitokotoPostRequestImpl(
      {required this.hitokoto,
      required this.type,
      required this.source,
      required this.creatorId,
      this.sourceWho});

  factory _$HitokotoPostRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$HitokotoPostRequestImplFromJson(json);

  @override
  final String hitokoto;
  @override
  final String type;
  @override
  final String source;
  @override
  final int creatorId;
  @override
  final String? sourceWho;

  @override
  String toString() {
    return 'HitokotoPostRequest(hitokoto: $hitokoto, type: $type, source: $source, creatorId: $creatorId, sourceWho: $sourceWho)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitokotoPostRequestImpl &&
            (identical(other.hitokoto, hitokoto) ||
                other.hitokoto == hitokoto) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.sourceWho, sourceWho) ||
                other.sourceWho == sourceWho));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hitokoto, type, source, creatorId, sourceWho);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitokotoPostRequestImplCopyWith<_$HitokotoPostRequestImpl> get copyWith =>
      __$$HitokotoPostRequestImplCopyWithImpl<_$HitokotoPostRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HitokotoPostRequestImplToJson(
      this,
    );
  }
}

abstract class _HitokotoPostRequest implements HitokotoPostRequest {
  const factory _HitokotoPostRequest(
      {required final String hitokoto,
      required final String type,
      required final String source,
      required final int creatorId,
      final String? sourceWho}) = _$HitokotoPostRequestImpl;

  factory _HitokotoPostRequest.fromJson(Map<String, dynamic> json) =
      _$HitokotoPostRequestImpl.fromJson;

  @override
  String get hitokoto;
  @override
  String get type;
  @override
  String get source;
  @override
  int get creatorId;
  @override
  String? get sourceWho;
  @override
  @JsonKey(ignore: true)
  _$$HitokotoPostRequestImplCopyWith<_$HitokotoPostRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HitokotoResponse _$HitokotoResponseFromJson(Map<String, dynamic> json) {
  return _HitokotoResponse.fromJson(json);
}

/// @nodoc
mixin _$HitokotoResponse {
  String get message => throw _privateConstructorUsedError;
  Hitokoto? get hitokoto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitokotoResponseCopyWith<HitokotoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitokotoResponseCopyWith<$Res> {
  factory $HitokotoResponseCopyWith(
          HitokotoResponse value, $Res Function(HitokotoResponse) then) =
      _$HitokotoResponseCopyWithImpl<$Res, HitokotoResponse>;
  @useResult
  $Res call({String message, Hitokoto? hitokoto});

  $HitokotoCopyWith<$Res>? get hitokoto;
}

/// @nodoc
class _$HitokotoResponseCopyWithImpl<$Res, $Val extends HitokotoResponse>
    implements $HitokotoResponseCopyWith<$Res> {
  _$HitokotoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? hitokoto = freezed,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      hitokoto: freezed == hitokoto
          ? _value.hitokoto
          : hitokoto // ignore: cast_nullable_to_non_nullable
              as Hitokoto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HitokotoCopyWith<$Res>? get hitokoto {
    if (_value.hitokoto == null) {
      return null;
    }

    return $HitokotoCopyWith<$Res>(_value.hitokoto!, (value) {
      return _then(_value.copyWith(hitokoto: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HitokotoResponseImplCopyWith<$Res>
    implements $HitokotoResponseCopyWith<$Res> {
  factory _$$HitokotoResponseImplCopyWith(_$HitokotoResponseImpl value,
          $Res Function(_$HitokotoResponseImpl) then) =
      __$$HitokotoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, Hitokoto? hitokoto});

  @override
  $HitokotoCopyWith<$Res>? get hitokoto;
}

/// @nodoc
class __$$HitokotoResponseImplCopyWithImpl<$Res>
    extends _$HitokotoResponseCopyWithImpl<$Res, _$HitokotoResponseImpl>
    implements _$$HitokotoResponseImplCopyWith<$Res> {
  __$$HitokotoResponseImplCopyWithImpl(_$HitokotoResponseImpl _value,
      $Res Function(_$HitokotoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? hitokoto = freezed,
  }) {
    return _then(_$HitokotoResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      hitokoto: freezed == hitokoto
          ? _value.hitokoto
          : hitokoto // ignore: cast_nullable_to_non_nullable
              as Hitokoto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HitokotoResponseImpl implements _HitokotoResponse {
  const _$HitokotoResponseImpl({required this.message, this.hitokoto});

  factory _$HitokotoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HitokotoResponseImplFromJson(json);

  @override
  final String message;
  @override
  final Hitokoto? hitokoto;

  @override
  String toString() {
    return 'HitokotoResponse(message: $message, hitokoto: $hitokoto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitokotoResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.hitokoto, hitokoto) ||
                other.hitokoto == hitokoto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, hitokoto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitokotoResponseImplCopyWith<_$HitokotoResponseImpl> get copyWith =>
      __$$HitokotoResponseImplCopyWithImpl<_$HitokotoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HitokotoResponseImplToJson(
      this,
    );
  }
}

abstract class _HitokotoResponse implements HitokotoResponse {
  const factory _HitokotoResponse(
      {required final String message,
      final Hitokoto? hitokoto}) = _$HitokotoResponseImpl;

  factory _HitokotoResponse.fromJson(Map<String, dynamic> json) =
      _$HitokotoResponseImpl.fromJson;

  @override
  String get message;
  @override
  Hitokoto? get hitokoto;
  @override
  @JsonKey(ignore: true)
  _$$HitokotoResponseImplCopyWith<_$HitokotoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
