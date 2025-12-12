import 'package:bookapp/data/network/network_api_service.dart';
import 'package:bookapp/models/login/loginModel.dart';
import 'package:bookapp/models/signup/signupModel.dart';
import 'package:bookapp/services/storage/local_storage.dart';

import 'auth_api_repository.dart';

class AuthHttpApiRepository implements AuthApiRepository {
  final NetworkApiService _apiService = NetworkApiService();

  @override
  Future<LoginModel> loginApi(dynamic data) async {
    try {
      final response = await _apiService.postApi(
        ApiEndpoints.reqresBAseUrl + ApiEndpoints.reqresLogin,
        data,
      );
      return LoginModel.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SignupModel> signupApi(dynamic data) async {
    dynamic response = await _apiServices.postApi(
      '${ApiEndpoints.reqresBAseUrl}${ApiEndpoints.reqresSignup}',
      data,
    );
    return SignupModel.fromJson(response);
  }

  @override
  Future logout() async {
    await Future.delayed(const Duration(seconds: 2));
    final sharedPrefrence = LocalStorage();
    await sharedPrefrence.clearValue('token');
    await sharedPrefrence.clearValue('isLogin');
  }
}
