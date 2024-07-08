import 'package:dart_frog/dart_frog.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';
part 'login.g.dart';

typedef Json = Map<String, dynamic>;

@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String username,
    required String password,
  }) = _LoginRequest;

  const LoginRequest._();

  factory LoginRequest.fromJson(Json json) => _$LoginRequestFromJson(json);

  static Future<LoginRequest?> fromRequest(Request request) async {
    try {
      final json = await request.json();
      return LoginRequest.fromJson(json as Json);
    } catch (e) {
      return null;
    }
  }
}

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required String message,
    String? token,
  }) = _LoginResponse;

  const LoginResponse._();

  factory LoginResponse.fromJson(Json json) => _$LoginResponseFromJson(json);
}
