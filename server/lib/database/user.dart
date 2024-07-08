import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';
import 'package:server/models/user/login.dart';

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
