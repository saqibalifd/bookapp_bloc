import 'package:bookapp/models/login/loginModel.dart';
import 'package:bookapp/models/signup/signupModel.dart';
import 'package:bookapp/services/storage/local_storage.dart';

import 'auth_api_repository.dart';

class AuthMockApiRepository implements AuthApiRepository {
  @override
  Future<LoginModel> loginApi(dynamic data) async {
    await Future.delayed(const Duration(seconds: 2));
    var responseData = {'token': 'a23z345xert'};
    return LoginModel.fromJson(responseData);
  }

  @override
  Future<SignupModel> signupApi(dynamic data) async {
    await Future.delayed(const Duration(seconds: 2));
    var responseData = {'token': 'a23z345xert'};
    return SignupModel.fromJson(responseData);
  }

  @override
  Future logout() async {
    await Future.delayed(const Duration(seconds: 2));
    final sharedPrefrence = LocalStorage();
    await sharedPrefrence.clearValue('token');
    await sharedPrefrence.clearValue('isLogin');
  }
}
