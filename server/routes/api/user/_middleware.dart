import 'package:server/index.dart';

Handler middleware(Handler handler) => handler.use(
      bearerAuthentication<User>(
        authenticator: (context, token) async =>
            context.read<IsarDatabase>().verifyToken(token),
      ),
    );
