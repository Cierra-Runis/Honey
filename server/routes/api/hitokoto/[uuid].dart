import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:server/database/isar.dart';
import 'package:server/models/hitokoto/hitokoto.dart';

Future<Response> onRequest(RequestContext context, String uuid) async {
  return switch (context.request.method) {
    HttpMethod.get => await _get(context, uuid),
    _ => Response.json(statusCode: HttpStatus.methodNotAllowed)
  };
}

Future<Response> _get(RequestContext context, String uuid) async {
  final database = context.read<IsarDatabase>();
  final hitokoto = database.findUniqueHitokotoByUUID(uuid);

  if (hitokoto == null) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: const HitokotoResponse(message: '资源不存在'),
    );
  }

  return Response.json(
    body: HitokotoResponse(message: '获取成功', hitokoto: hitokoto),
  );
}
