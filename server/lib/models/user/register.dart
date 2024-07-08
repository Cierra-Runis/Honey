import 'package:dart_frog/dart_frog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:server/models/user/login.dart';

part 'register.freezed.dart';
part 'register.g.dart';

@freezed
class RegisterRequest with _$RegisterRequest {
  const factory RegisterRequest({
    required String username,
    required String password,
  }) = _RegisterRequest;

  const RegisterRequest._();

  factory RegisterRequest.fromJson(Json json) =>
      _$RegisterRequestFromJson(json);

  static Future<RegisterRequest?> fromRequest(Request request) async {
    try {
      final json = await request.json();
      return RegisterRequest.fromJson(json as Json);
    } catch (e) {
      return null;
    }
  }
}

@freezed
class RegisterResponse with _$RegisterResponse {
  const factory RegisterResponse({
    required String message,
    String? token,
  }) = _RegisterResponse;

  const RegisterResponse._();

  factory RegisterResponse.fromJson(Json json) =>
      _$RegisterResponseFromJson(json);
}
