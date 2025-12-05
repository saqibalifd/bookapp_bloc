import 'package:bookapp/data/network/network.dart';
import 'package:bookapp/models/user/userModel.dart';
import 'package:bookapp/repository/user_api/user_api_repository.dart';

class UserHttpApiRepository implements UserApiRepository {
  final _apiServices = NetworkApiService();

  @override
  Future<UserModel> fetchUser() async {
    final response = await _apiServices.getApi(
      ApiEndpoints.userProfile,
      headers: {'x-api-key': 'reqres-free-v1'},
    );

    return UserModel.fromJson(response);
  }
}
