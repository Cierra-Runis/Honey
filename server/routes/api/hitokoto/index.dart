import 'package:server/index.dart';

Future<Response> onRequest(RequestContext context) async {
  print(context.request);

  return switch (context.request.method) {
    HttpMethod.get => await _get(context),
    HttpMethod.post => await _post(context),
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

Future<Response> _post(RequestContext context) async {
  final request = await HitokotoPostRequest.fromRequest(context.request);
  if (request == null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: const HitokotoResponse(message: '参数错误'),
    );
  }

  final user = context.read<User>();
  if (user.id != request.creatorId) {
    return Response.json(statusCode: HttpStatus.forbidden);
  }

  final database = context.read<IsarDatabase>();
  final hitokoto = database.createHitokotoByHitokotoPostRequest(request);
  if (hitokoto == null) {
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: const HitokotoResponse(message: '创建失败'),
    );
  }

  return Response.json(
    body: HitokotoResponse(message: '创建成功', hitokoto: hitokoto),
  );
}
