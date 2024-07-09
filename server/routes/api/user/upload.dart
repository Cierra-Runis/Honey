import 'package:server/index.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.get => await _get(context),
    _ => Response(statusCode: HttpStatus.methodNotAllowed)
  };
}

Future<Response> _get(RequestContext context) async {
  final request = await UserUploadRequest.fromRequest(context.request);
  if (request == null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: const UserProfileResponse(message: '参数错误'),
    );
  }

  final database = context.read<IsarDatabase>();
  return Response.json(
    body: UserUploadResponse(
      message: '获取成功',
      hitokotos: database.findHitokotosCreatedByUserId(request.userId),
    ),
  );
}
