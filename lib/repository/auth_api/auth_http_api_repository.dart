
import 'package:bookapp/data/network/network.dart';

import 'auth_api_repository.dart';

/// Implementation of [AuthApiRepository] for making HTTP requests to the authentication API.
class AuthHttpApiRepository implements AuthApiRepository {
  final BaseApiServices _apiServices = NetworkApiService();

  /// Sends a login request to the authentication API with the provided [data].
  ///
  /// Returns a [UserModel] representing the user data if the login is successful.
  // @override
  // Future<UserModel> loginApi(dynamic data) async {
  //   dynamic response = await _apiServices.postApi(ApiEndpoints.login, data);
  //   return UserModel.fromJson(response);
  // }
}