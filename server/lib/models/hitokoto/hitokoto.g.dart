// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hitokoto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HitokotoResponseImpl _$$HitokotoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HitokotoResponseImpl(
      message: json['message'] as String,
      hitokoto: json['hitokoto'] == null
          ? null
          : Hitokoto.fromJson(json['hitokoto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HitokotoResponseImplToJson(
        _$HitokotoResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'hitokoto': instance.hitokoto,
    };
