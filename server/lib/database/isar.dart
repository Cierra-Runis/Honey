import 'package:server/index.dart';

class IsarDatabase {
  factory IsarDatabase() => _instance;

  IsarDatabase._internal() {
    _isar = Isar.open(
      schemas: [
        UserSchema,
        UserProfileSchema,
        HitokotoSchema,
      ],
      directory: Directory.current.path,
    );
  }

  static final IsarDatabase _instance = IsarDatabase._internal();

  late Isar _isar;

  static String generateToken({
    required User user,
  }) {
    final jwt = JWT({'username': user.username});
    return jwt.sign(SecretKey('123'));
  }

  User? verifyToken(String token) {
    try {
      final payload = JWT.verify(token, SecretKey('123'));
      final payloadData = payload.payload as Json;
      final username = payloadData['username'] as String;
      return findUniqueUserByUsername(username);
    } catch (e) {
      return null;
    }
  }

  User? findUniqueUserByUsername(String value) =>
      _isar.users.where().usernameEqualTo(value).findFirst();

  User? createUserByRequest(RegisterRequest request) {
    try {
      final user = User(
        id: _isar.users.autoIncrement(),
        username: request.username,
        password: request.password,
        createAt: DateTime.now(),
        editAt: DateTime.now(),
      );
      _isar.write((isar) => _isar.users.put(user));
      return findUniqueUserByUsername(request.username);
    } catch (e) {
      return null;
    }
  }

  UserProfile? findUniqueUserProfileByUserId(int userId) {
    final userProfile =
        _isar.userProfiles.where().userIdEqualTo(userId).findFirst();
    if (userProfile != null) return userProfile;

    final newUserProfile = UserProfile(
      id: _isar.userProfiles.autoIncrement(),
      userId: userId,
      description: '',
      createAt: DateTime.now(),
      editAt: DateTime.now(),
    );

    try {
      _isar.write((isar) => isar.userProfiles.put(newUserProfile));
      return newUserProfile;
    } catch (e) {
      return null;
    }
  }

  UserProfile? updateUserProfileByPostRequest(
    UserProfilePostRequest request,
  ) {
    try {
      final profile = findUniqueUserProfileByUserId(request.userId);
      if (profile?.id != request.id) return null;

      _isar.write(
        (isar) => isar.userProfiles.update(
          id: request.id,
          userId: request.userId,
          description: request.description,
          editAt: DateTime.now(),
          avatarId: request.avatarId,
        ),
      );
      return findUniqueUserProfileByUserId(request.userId);
    } catch (e) {
      return null;
    }
  }

  Hitokoto? findRandomHitokoto() {
    final count = _isar.hitokotos.count();
    final randomIndex =
        Random(DateTime.now().millisecondsSinceEpoch).nextInt(count);
    return _isar.hitokotos
        .where()
        .idGreaterThanOrEqualTo(randomIndex)
        .findFirst();
  }

  Hitokoto? findUniqueHitokotoByUUID(String uuid) {
    return _isar.hitokotos.where().uuidEqualTo(uuid).findFirst();
  }

  Hitokoto? createHitokotoByHitokotoPostRequest(HitokotoPostRequest request) {
    try {
      final hitokoto = Hitokoto(
        id: _isar.hitokotos.autoIncrement(),
        uuid: const UuidV4().generate(),
        hitokoto: request.hitokoto,
        type: request.type,
        source: request.source,
        creatorId: request.creatorId,
        createAt: DateTime.now(),
        sourceWho: request.sourceWho,
      );
      _isar.write((isar) => _isar.hitokotos.put(hitokoto));
      return hitokoto;
    } catch (e) {
      return null;
    }
  }
}
