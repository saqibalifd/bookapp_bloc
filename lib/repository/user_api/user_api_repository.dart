import 'package:bookapp/models/user/userModel.dart';

abstract class UserApiRepository {
  Future<UserModel> fetchUser();
}
