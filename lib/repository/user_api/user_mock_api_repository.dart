import 'package:bookapp/models/user/userModel.dart';
import 'package:bookapp/repository/user_api/user_api_repository.dart';

class UserMockApiRepository implements UserApiRepository {
  @override
  Future<UserModel> fetchUser() async {
    await Future.delayed(const Duration(seconds: 3));

    dynamic responseData = {
      "data": {
        "id": 2,
        "email": "janet.weaver@reqres.in",
        "first_name": "Janet",
        "last_name": "Weaver",
        "avatar": "https://reqres.in/img/faces/2-image.jpg",
      },
      "support": {
        "url":
            "<a href=https://reqres.in/#support-heading>https://reqres.in/#support-heading</a>",
        "text": "To keep ReqRes free, contributions are appreciated!",
      },
    };

    return UserModel.fromJson(responseData);
  }
}
