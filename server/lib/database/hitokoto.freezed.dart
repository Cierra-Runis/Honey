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

Hitokoto _$HitokotoFromJson(Map<String, dynamic> json) {
  return _Hitokoto.fromJson(json);
}

/// @nodoc
mixin _$Hitokoto {
  @Id()
  int get id => throw _privateConstructorUsedError;
  @Index(unique: true)
  String get uuid => throw _privateConstructorUsedError;
  String get hitokoto => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  int get creatorId => throw _privateConstructorUsedError;
  DateTime get createAt => throw _privateConstructorUsedError;
  String? get sourceWho => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitokotoCopyWith<Hitokoto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitokotoCopyWith<$Res> {
  factory $HitokotoCopyWith(Hitokoto value, $Res Function(Hitokoto) then) =
      _$HitokotoCopyWithImpl<$Res, Hitokoto>;
  @useResult
  $Res call(
      {@Id() int id,
      @Index(unique: true) String uuid,
      String hitokoto,
      String type,
      String source,
      int creatorId,
      DateTime createAt,
      String? sourceWho});
}

/// @nodoc
class _$HitokotoCopyWithImpl<$Res, $Val extends Hitokoto>
    implements $HitokotoCopyWith<$Res> {
  _$HitokotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uuid = null,
    Object? hitokoto = null,
    Object? type = null,
    Object? source = null,
    Object? creatorId = null,
    Object? createAt = null,
    Object? sourceWho = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
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
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sourceWho: freezed == sourceWho
          ? _value.sourceWho
          : sourceWho // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HitokotoImplCopyWith<$Res>
    implements $HitokotoCopyWith<$Res> {
  factory _$$HitokotoImplCopyWith(
          _$HitokotoImpl value, $Res Function(_$HitokotoImpl) then) =
      __$$HitokotoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Id() int id,
      @Index(unique: true) String uuid,
      String hitokoto,
      String type,
      String source,
      int creatorId,
      DateTime createAt,
      String? sourceWho});
}

/// @nodoc
class __$$HitokotoImplCopyWithImpl<$Res>
    extends _$HitokotoCopyWithImpl<$Res, _$HitokotoImpl>
    implements _$$HitokotoImplCopyWith<$Res> {
  __$$HitokotoImplCopyWithImpl(
      _$HitokotoImpl _value, $Res Function(_$HitokotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uuid = null,
    Object? hitokoto = null,
    Object? type = null,
    Object? source = null,
    Object? creatorId = null,
    Object? createAt = null,
    Object? sourceWho = freezed,
  }) {
    return _then(_$HitokotoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
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
      createAt: null == createAt
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sourceWho: freezed == sourceWho
          ? _value.sourceWho
          : sourceWho // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HitokotoImpl extends _Hitokoto {
  const _$HitokotoImpl(
      {@Id() required this.id,
      @Index(unique: true) required this.uuid,
      required this.hitokoto,
      required this.type,
      required this.source,
      required this.creatorId,
      required this.createAt,
      this.sourceWho})
      : super._();

  factory _$HitokotoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HitokotoImplFromJson(json);

  @override
  @Id()
  final int id;
  @override
  @Index(unique: true)
  final String uuid;
  @override
  final String hitokoto;
  @override
  final String type;
  @override
  final String source;
  @override
  final int creatorId;
  @override
  final DateTime createAt;
  @override
  final String? sourceWho;

  @override
  String toString() {
    return 'Hitokoto(id: $id, uuid: $uuid, hitokoto: $hitokoto, type: $type, source: $source, creatorId: $creatorId, createAt: $createAt, sourceWho: $sourceWho)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HitokotoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.hitokoto, hitokoto) ||
                other.hitokoto == hitokoto) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.sourceWho, sourceWho) ||
                other.sourceWho == sourceWho));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, uuid, hitokoto, type, source,
      creatorId, createAt, sourceWho);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HitokotoImplCopyWith<_$HitokotoImpl> get copyWith =>
      __$$HitokotoImplCopyWithImpl<_$HitokotoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HitokotoImplToJson(
      this,
    );
  }
}

abstract class _Hitokoto extends Hitokoto {
  const factory _Hitokoto(
      {@Id() required final int id,
      @Index(unique: true) required final String uuid,
      required final String hitokoto,
      required final String type,
      required final String source,
      required final int creatorId,
      required final DateTime createAt,
      final String? sourceWho}) = _$HitokotoImpl;
  const _Hitokoto._() : super._();

  factory _Hitokoto.fromJson(Map<String, dynamic> json) =
      _$HitokotoImpl.fromJson;

  @override
  @Id()
  int get id;
  @override
  @Index(unique: true)
  String get uuid;
  @override
  String get hitokoto;
  @override
  String get type;
  @override
  String get source;
  @override
  int get creatorId;
  @override
  DateTime get createAt;
  @override
  String? get sourceWho;
  @override
  @JsonKey(ignore: true)
  _$$HitokotoImplCopyWith<_$HitokotoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
