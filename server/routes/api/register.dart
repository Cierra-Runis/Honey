import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:server/database/isar.dart';
import 'package:server/models/user/register.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.post => await _post(context),
    _ => Response(statusCode: HttpStatus.methodNotAllowed)
  };
}

Future<Response> _post(RequestContext context) async {
  final request = await RegisterRequest.fromRequest(context.request);
  if (request == null) return Response(statusCode: HttpStatus.badRequest);

  final database = context.read<IsarDatabase>();
  final user = database.findUniqueUserByUsername(request.username);

  if (user != null) {
    return Response.json(
      statusCode: HttpStatus.forbidden,
      body: const RegisterResponse(message: '用户已存在'),
    );
  }

  final newUser = database.createUserByRequest(request);

  if (newUser == null) {
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: const RegisterResponse(message: '创建失败'),
    );
  }

  final token = IsarDatabase.generateToken(user: newUser);

  return Response.json(
    body: RegisterResponse(token: token, message: '创建成功'),
  );
}
