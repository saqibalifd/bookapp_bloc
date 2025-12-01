import 'package:bookapp/models/login/loginModel.dart';
import 'package:bookapp/models/signup/signupModel.dart';

abstract class AuthApiRepository {
  Future<LoginModel> loginApi(dynamic data);
    Future<SignupModel> signupApi(dynamic data);
}
