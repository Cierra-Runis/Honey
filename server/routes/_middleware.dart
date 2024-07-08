import 'package:dart_frog/dart_frog.dart';
import 'package:server/database/isar.dart';

Handler middleware(Handler handler) => handler
    .use(requestLogger())
    .use(provider<IsarDatabase>((context) => IsarDatabase()));
