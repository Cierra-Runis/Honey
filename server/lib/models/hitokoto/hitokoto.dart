import 'package:server/index.dart';

part 'hitokoto.freezed.dart';
part 'hitokoto.g.dart';

@freezed
class HitokotoPostRequest with _$HitokotoPostRequest {
  const factory HitokotoPostRequest({
    required String hitokoto,
    required String type,
    required String source,
    required int creatorId,
    String? sourceWho,
  }) = _HitokotoPostRequest;

  factory HitokotoPostRequest.fromJson(Json json) =>
      _$HitokotoPostRequestFromJson(json);

  static Future<HitokotoPostRequest?> fromRequest(Request request) async {
    try {
      final json = await request.json();
      return HitokotoPostRequest.fromJson(json as Json);
    } catch (e) {
      return null;
    }
  }
}

@freezed
class HitokotoResponse with _$HitokotoResponse {
  const factory HitokotoResponse({
    required String message,
    Hitokoto? hitokoto,
  }) = _HitokotoResponse;

  factory HitokotoResponse.fromJson(Map<String, dynamic> json) =>
      _$HitokotoResponseFromJson(json);
}
