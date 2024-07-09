import 'package:server/index.dart';

part 'upload.freezed.dart';
part 'upload.g.dart';

@freezed
class UserUploadRequest with _$UserUploadRequest {
  const factory UserUploadRequest({
    required int userId,
  }) = _UserUploadRequest;

  factory UserUploadRequest.fromJson(Json json) =>
      _$UserUploadRequestFromJson(json);

  static Future<UserUploadRequest?> fromRequest(Request request) async {
    try {
      final json = await request.json();
      return UserUploadRequest.fromJson(json as Json);
    } catch (e) {
      return null;
    }
  }
}

@freezed
class UserUploadResponse with _$UserUploadResponse {
  const factory UserUploadResponse({
    required String message,
    required List<Hitokoto> hitokotos,
  }) = _UserUploadResponse;

  factory UserUploadResponse.fromJson(Json json) =>
      _$UserUploadResponseFromJson(json);
}
