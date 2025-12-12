import 'package:bookapp/models/user/userModel.dart';
import 'package:bookapp/services/storage/local_storage.dart';

class LocalUserController {
  final LocalStorage localStorage = LocalStorage();

  Future<UserModel> getLocalUser() async {
    final id = await localStorage.readValue('user_id') ?? '';
    final name = await localStorage.readValue('user_name') ?? '';
    final email = await localStorage.readValue('user_email') ?? '';
    final phone = await localStorage.readValue('user_phone') ?? '';
    final gender = await localStorage.readValue('user_gender') ?? '';
    final profileImage = await localStorage.readValue('profile_image') ?? '';
    final dob = await localStorage.readValue('dob') ?? '';
    final joinedAt = await localStorage.readValue('joined_at') ?? '';
    final userType = await localStorage.readValue('user_type') ?? '';

    // Address fields
    final city = await localStorage.readValue('address_city') ?? '';
    final country = await localStorage.readValue('address_country') ?? '';

    return UserModel(
      status: true,
      message: 'Loaded from local storage',
      user: User(
        id: id,
        name: name,
        email: email,
        phone: phone,
        gender: gender,
        profileImage: profileImage,
        dateOfBirth: dob,
        joinedAt: joinedAt,
        userType: userType,
        address: Address(city: city, country: country),
      ),
    );
  }
}
