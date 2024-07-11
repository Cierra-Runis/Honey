// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserFavoriteRequestImpl _$$UserFavoriteRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserFavoriteRequestImpl(
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$$UserFavoriteRequestImplToJson(
        _$UserFavoriteRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

_$UserFavoritePostRequestImpl _$$UserFavoritePostRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserFavoritePostRequestImpl(
      userId: (json['userId'] as num).toInt(),
      hitokotoId: (json['hitokotoId'] as num).toInt(),
    );

Map<String, dynamic> _$$UserFavoritePostRequestImplToJson(
        _$UserFavoritePostRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'hitokotoId': instance.hitokotoId,
    };

_$UserFavoriteResponseImpl _$$UserFavoriteResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserFavoriteResponseImpl(
      message: json['message'] as String,
      favorites: (json['favorites'] as List<dynamic>)
          .map((e) => UserFavorite.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserFavoriteResponseImplToJson(
        _$UserFavoriteResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'favorites': instance.favorites,
    };
