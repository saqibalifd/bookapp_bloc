import 'package:bookapp/models/login/loginModel.dart';

abstract class AuthApiRepository {
  Future<LoginModel> loginApi(dynamic data);
}
