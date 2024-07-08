import 'package:server/index.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.get => await _get(context),
    _ => Response.json(statusCode: HttpStatus.methodNotAllowed)
  };
}

Future<Response> _get(RequestContext context) async {
  final database = context.read<IsarDatabase>();
  final hitokoto = database.findRandomHitokoto();

  return Response.json(
    body: HitokotoResponse(message: '获取成功', hitokoto: hitokoto),
  );
}
