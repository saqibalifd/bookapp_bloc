import 'dart:async';
import 'package:bookapp/models/login/loginModel.dart';
import 'auth_api_repository.dart';

class AuthMockApiRepository implements AuthApiRepository {
  @override
  Future<LoginModel> loginApi(dynamic data) async {
    await Future.delayed(const Duration(seconds: 2));

    if (data["email"] == "eve.holt@reqres.in" &&
        data["password"] == "cityslicka") {
      return const LoginModel(token: "mock_token_12345");
    } else {
      return const LoginModel(error: "Invalid Credentials");
    }
  }
}
