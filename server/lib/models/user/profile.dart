import 'package:server/index.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class UserProfileGetRequest with _$UserProfileGetRequest {
  const factory UserProfileGetRequest({
    required int userId,
  }) = _UserProfileGetRequest;

  const UserProfileGetRequest._();

  factory UserProfileGetRequest.fromJson(Json json) =>
      _$UserProfileGetRequestFromJson(json);

  static Future<UserProfileGetRequest?> fromRequest(Request request) async {
    try {
      final json = await request.json();
      return UserProfileGetRequest.fromJson(json as Json);
    } catch (e) {
      return null;
    }
  }
}

@freezed
class UserProfilePostRequest with _$UserProfilePostRequest {
  const factory UserProfilePostRequest({
    required int id,
    required int userId,
    required String description,
    @Default('') String avatarId,
  }) = _UserProfilePostRequest;

  const UserProfilePostRequest._();

  factory UserProfilePostRequest.fromJson(Json json) =>
      _$UserProfilePostRequestFromJson(json);

  static Future<UserProfilePostRequest?> fromRequest(Request request) async {
    try {
      final json = await request.json();
      return UserProfilePostRequest.fromJson(json as Json);
    } catch (e) {
      return null;
    }
  }
}

@freezed
class UserProfileResponse with _$UserProfileResponse {
  const factory UserProfileResponse({
    required String message,
    UserProfile? profile,
  }) = _UserProfileResponse;

  const UserProfileResponse._();

  factory UserProfileResponse.fromJson(Json json) =>
      _$UserProfileResponseFromJson(json);
}
