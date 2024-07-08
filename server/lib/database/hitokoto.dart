import 'package:server/index.dart';

part 'hitokoto.freezed.dart';
part 'hitokoto.g.dart';

@collection
@freezed
class Hitokoto with _$Hitokoto {
  const factory Hitokoto({
    @Id() required int id,
    @Index(unique: true) required String uuid,
    required String hitokoto,
    required String type,
    required String source,
    required int creatorId,
    required DateTime createAt,
    String? sourceWho,
  }) = _Hitokoto;

  const Hitokoto._();

  factory Hitokoto.fromJson(Json json) => _$HitokotoFromJson(json);

  int get length => hitokoto.length;
}
