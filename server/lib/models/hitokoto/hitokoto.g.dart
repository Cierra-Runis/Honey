// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hitokoto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HitokotoPostRequestImpl _$$HitokotoPostRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$HitokotoPostRequestImpl(
      hitokoto: json['hitokoto'] as String,
      type: json['type'] as String,
      source: json['source'] as String,
      creatorId: (json['creatorId'] as num).toInt(),
      sourceWho: json['sourceWho'] as String?,
    );

Map<String, dynamic> _$$HitokotoPostRequestImplToJson(
        _$HitokotoPostRequestImpl instance) =>
    <String, dynamic>{
      'hitokoto': instance.hitokoto,
      'type': instance.type,
      'source': instance.source,
      'creatorId': instance.creatorId,
      'sourceWho': instance.sourceWho,
    };

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
