import 'package:bookapp/data/network/network.dart';
import 'package:bookapp/models/login/loginModel.dart';
import 'package:bookapp/models/signup/signupModel.dart';

import 'auth_api_repository.dart';

class AuthHttpApiRepository implements AuthApiRepository {
  final BaseApiServices _apiServices = NetworkApiService();
  @override
  Future<LoginModel> loginApi(dynamic data) async {
    dynamic response = await _apiServices.postApi(
      '${ApiEndpoints.reqresBAseUrl}${ApiEndpoints.reqresLogin}',
      data,
    );
    return LoginModel.fromJson(response);
  }
  @override
  Future<SignupModel> signupApi(dynamic data) async {
    dynamic response = await _apiServices.postApi(
      '${ApiEndpoints.reqresBAseUrl}${ApiEndpoints.reqresSignup}',
      data,
    );
    return SignupModel.fromJson(response);
  }
}
