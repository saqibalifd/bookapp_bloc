import 'package:bookapp/data/network/network_api_service.dart';
import 'package:bookapp/models/login/loginModel.dart';
import '../../utils/api_endpoints.dart';
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
}
