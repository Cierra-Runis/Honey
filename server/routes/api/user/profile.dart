import 'package:server/index.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.get => await _get(context),
    HttpMethod.post => await _post(context),
    _ => Response(statusCode: HttpStatus.methodNotAllowed)
  };
}

Future<Response> _get(RequestContext context) async {
  final request = await UserProfileGetRequest.fromRequest(context.request);

  if (request == null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: const UserProfileResponse(message: '参数错误'),
    );
  }

  final userId = int.tryParse(request.userId);
  if (userId == null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: const UserProfileResponse(message: '参数错误'),
    );
  }

  final database = context.read<IsarDatabase>();
  final userProfile = database.findUniqueUserProfileByUserId(userId);

  if (userProfile == null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: const UserProfileResponse(message: '查询失败'),
    );
  }

  return Response.json(
    body: UserProfileResponse(profile: userProfile, message: '查询成功'),
  );
}

Future<Response> _post(RequestContext context) async {
  final request = await UserProfilePostRequest.fromRequest(context.request);
  if (request == null) return Response.json(statusCode: HttpStatus.badRequest);

  final user = context.read<User>();
  if (user.id != request.userId) {
    return Response.json(statusCode: HttpStatus.forbidden);
  }

  final database = context.read<IsarDatabase>();
  final profile = database.updateUserProfileByPostRequest(request);

  if (profile == null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: const UserProfileResponse(message: '更新失败'),
    );
  }

  return Response.json(
    body: UserProfileResponse(message: '更新成功', profile: profile),
  );
}
