import 'package:server/index.dart';

Handler middleware(Handler handler) => handler
    .use(requestLogger())
    .use(provider<IsarDatabase>((context) => IsarDatabase()));
