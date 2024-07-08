// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileGetRequestImpl _$$UserProfileGetRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileGetRequestImpl(
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$$UserProfileGetRequestImplToJson(
        _$UserProfileGetRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

_$UserProfilePostRequestImpl _$$UserProfilePostRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfilePostRequestImpl(
      id: (json['id'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      description: json['description'] as String,
      avatarId: json['avatarId'] as String? ?? '',
    );

Map<String, dynamic> _$$UserProfilePostRequestImplToJson(
        _$UserProfilePostRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'description': instance.description,
      'avatarId': instance.avatarId,
    };

_$UserProfileResponseImpl _$$UserProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileResponseImpl(
      message: json['message'] as String,
      profile: json['profile'] == null
          ? null
          : UserProfile.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileResponseImplToJson(
        _$UserProfileResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'profile': instance.profile,
    };
