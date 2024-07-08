import 'package:server/index.dart';

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
