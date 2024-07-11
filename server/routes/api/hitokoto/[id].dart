import 'package:server/index.dart';

Future<Response> onRequest(RequestContext context, String id) async {
  return switch (context.request.method) {
    HttpMethod.get => await _get(context, id),
    _ => Response.json(statusCode: HttpStatus.methodNotAllowed)
  };
}

Future<Response> _get(RequestContext context, String id) async {
  final database = context.read<IsarDatabase>();
  final intId = int.tryParse(id);

  if (intId == null) return Response.json(statusCode: HttpStatus.badRequest);

  final hitokoto = database.findUniqueHitokotoById(intId);

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
