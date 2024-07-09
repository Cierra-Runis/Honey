import 'package:server/index.dart';

part 'favorite.freezed.dart';
part 'favorite.g.dart';

@freezed
class UserFavoriteGetRequest with _$UserFavoriteGetRequest {
  const factory UserFavoriteGetRequest({
    required int userId,
  }) = _UserFavoriteRequest;

  factory UserFavoriteGetRequest.fromJson(Json json) =>
      _$UserFavoriteGetRequestFromJson(json);

  static Future<UserFavoriteGetRequest?> fromRequest(Request request) async {
    try {
      final json = await request.json();
      return UserFavoriteGetRequest.fromJson(json as Json);
    } catch (e) {
      return null;
    }
  }
}

@freezed
class UserFavoritePostRequest with _$UserFavoritePostRequest {
  const factory UserFavoritePostRequest({
    required int userId,
    required int hitokotoId,
  }) = _UserFavoritePostRequest;

  factory UserFavoritePostRequest.fromJson(Json json) =>
      _$UserFavoritePostRequestFromJson(json);

  static Future<UserFavoritePostRequest?> fromRequest(Request request) async {
    try {
      final json = await request.json();
      return UserFavoritePostRequest.fromJson(json as Json);
    } catch (e) {
      return null;
    }
  }
}

@freezed
class UserFavoriteResponse with _$UserFavoriteResponse {
  const factory UserFavoriteResponse({
    required String message,
    required List<UserFavorite> favorites,
  }) = _UserFavoriteResponse;

  factory UserFavoriteResponse.fromJson(Json json) =>
      _$UserFavoriteResponseFromJson(json);
}
