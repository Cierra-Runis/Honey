import 'package:server/index.dart';

Future<Response> onRequest(RequestContext context) async {
  return switch (context.request.method) {
    HttpMethod.get => await _get(context),
    HttpMethod.post => await _post(context),
    _ => Response(statusCode: HttpStatus.methodNotAllowed)
  };
}

Future<Response> _get(RequestContext context) async {
  final request = await UserFavoriteGetRequest.fromRequest(context.request);

  if (request == null || int.tryParse(request.userId) == null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: const UserFavoriteResponse(message: '参数错误', favorites: []),
    );
  }

  final database = context.read<IsarDatabase>();
  return Response.json(
    body: UserFavoriteResponse(
      message: '获取成功',
      favorites: database.findUserFavoritesByUserId(int.parse(request.userId)),
    ),
  );
}

Future<Response> _post(RequestContext context) async {
  final request = await UserFavoritePostRequest.fromRequest(context.request);
  if (request == null) {
    return Response.json(
      statusCode: HttpStatus.badRequest,
      body: const UserFavoriteResponse(message: '参数错误', favorites: []),
    );
  }

  final user = context.read<User>();
  if (user.id != request.userId) {
    return Response.json(statusCode: HttpStatus.forbidden);
  }

  final database = context.read<IsarDatabase>();

  final allHasFavorite = database.findUserFavoritesByUserId(request.userId);
  final isPostHasFavorite = allHasFavorite
      .where((element) => element.hitokotoId == request.hitokotoId)
      .isNotEmpty;

  if (isPostHasFavorite) {
    return Response.json(
      statusCode: HttpStatus.conflict,
      body: const UserFavoriteResponse(message: '不能重复收藏', favorites: []),
    );
  }

  final favourite =
      database.createUserFavoriteByUserFavoritePostRequest(request);

  if (favourite == null) {
    return Response.json(
      statusCode: HttpStatus.internalServerError,
      body: const UserFavoriteResponse(message: '收藏失败', favorites: []),
    );
  }

  return Response.json(
    body: UserFavoriteResponse(
      message: '收藏成功',
      favorites: [favourite],
    ),
  );
}
