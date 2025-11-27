import 'package:bookapp/models/login/loginModel.dart';

import 'auth_api_repository.dart';

class AuthMockApiRepository implements AuthApiRepository {
  @override
  Future<LoginModel> loginApi(dynamic data) async {
    // Simulate a delay to mimic network latency
    await Future.delayed(const Duration(seconds: 2));
    // Mock response data
    var responseData = {'token': 'a23z345xert'};
    return LoginModel.fromJson(responseData);
  }
}
