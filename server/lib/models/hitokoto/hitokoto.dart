import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:server/database/hitokoto.dart';

part 'hitokoto.freezed.dart';
part 'hitokoto.g.dart';

@freezed
class HitokotoResponse with _$HitokotoResponse {
  const factory HitokotoResponse({
    required String message,
    Hitokoto? hitokoto,
  }) = _HitokotoResponse;

  factory HitokotoResponse.fromJson(Map<String, dynamic> json) =>
      _$HitokotoResponseFromJson(json);
}
