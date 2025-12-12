import 'package:freezed_annotation/freezed_annotation.dart';

part 'userModel.freezed.dart';
part 'userModel.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @Default(false) bool status,
    @Default('') String message,
    User? user,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
abstract class User with _$User {
  const factory User({
    @Default('') String id,
    @Default('') String name,
    @Default('') String email,
    @Default('') String phone,
    @Default('') String gender,
    @JsonKey(name: 'profileImage') @Default('') String profileImage,
    @Default('') String dateOfBirth,
    @Default('') String joinedAt,
    @Default('') String userType,
    Address? address,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class Address with _$Address {
  const factory Address({
    @Default('') String city,
    @Default('') String country,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
