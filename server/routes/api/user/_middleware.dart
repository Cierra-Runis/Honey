import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_auth/dart_frog_auth.dart';
import 'package:server/database/isar.dart';
import 'package:server/database/user.dart';

Handler middleware(Handler handler) => handler.use(
      bearerAuthentication<User>(
        authenticator: (context, token) async =>
            context.read<IsarDatabase>().verifyToken(token),
      ),
    );
