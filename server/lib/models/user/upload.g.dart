// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserUploadRequestImpl _$$UserUploadRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserUploadRequestImpl(
      userId: (json['userId'] as num).toInt(),
    );

Map<String, dynamic> _$$UserUploadRequestImplToJson(
        _$UserUploadRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

_$UserUploadResponseImpl _$$UserUploadResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserUploadResponseImpl(
      message: json['message'] as String,
      hitokotos: (json['hitokotos'] as List<dynamic>)
          .map((e) => Hitokoto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserUploadResponseImplToJson(
        _$UserUploadResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'hitokotos': instance.hitokotos,
    };
