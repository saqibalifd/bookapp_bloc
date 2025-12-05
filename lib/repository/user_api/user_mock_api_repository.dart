import 'package:bookapp/models/user/userModel.dart';
import 'package:bookapp/repository/user_api/user_api_repository.dart';

class UserMockApiRepository implements UserApiRepository {
  @override
  Future<UserModel> fetchUser() async {
    await Future.delayed(const Duration(seconds: 3));

    dynamic responseData = {
      "status": true,
      "message": "User information fetched successfully.",
      "user": {
        "id": "user_001",
        "name": "Mubeen Ali",
        "email": "mubeen@example.com",
        "phone": "+923001234567",
        "gender": "Male",
        "profileImage":
            "https://cdn.vectorstock.com/i/500p/29/52/faceless-male-avatar-in-hoodie-vector-56412952.jpg",
        "dateOfBirth": "2007-05-1",
        "joinedAt": "2024-06-21T12:30:00Z",
        "userType": "customer",
        "address": {"city": "Panjab", "country": "Pakistan"},
      },
    };

    return UserModel.fromJson(responseData);
  }
}
