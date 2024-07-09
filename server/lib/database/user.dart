import 'package:server/index.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@collection
@freezed
class User with _$User {
  const factory User({
    @Id() required int id,
    @Index(unique: true) required String username,
    required String password,
    required DateTime createAt,
    required DateTime editAt,
  }) = _User;

  factory User.fromJson(Json json) => _$UserFromJson(json);
}

@collection
@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    @Id() required int id,
    required int userId,
    required String description,
    required DateTime createAt,
    required DateTime editAt,
    @Default('') String avatarId,
  }) = _UserProfile;

  factory UserProfile.fromJson(Json json) => _$UserProfileFromJson(json);
}

@collection
@freezed
class UserFavorite with _$UserFavorite {
  const factory UserFavorite({
    @Id() required int id,
    required int userId,
    required int hitokotoId,
  }) = _UserFavorite;

  factory UserFavorite.fromJson(Json json) => _$UserFavoriteFromJson(json);
}
