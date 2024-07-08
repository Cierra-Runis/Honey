import 'package:server/index.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.post => await _post(context),
    _ => Response(statusCode: HttpStatus.methodNotAllowed)
  };
}

Future<Response> _post(RequestContext context) async {
  final request = await LoginRequest.fromRequest(context.request);
  if (request == null) return Response(statusCode: HttpStatus.badRequest);

  final database = context.read<IsarDatabase>();
  final user = database.findUniqueUserByUsername(request.username);

  if (user == null) {
    return Response.json(
      statusCode: HttpStatus.notFound,
      body: const LoginResponse(message: '用户不存在'),
    );
  }

  if (request.password != user.password) {
    return Response.json(
      statusCode: HttpStatus.forbidden,
      body: const LoginResponse(message: '密码错误'),
    );
  }

  final token = IsarDatabase.generateToken(user: user);

  return Response.json(
    body: LoginResponse(token: token, message: '登录成功'),
  );
}
