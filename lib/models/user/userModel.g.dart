// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  status: json['status'] as bool? ?? false,
  message: json['message'] as String? ?? '',
  user: json['user'] == null
      ? null
      : User.fromJson(json['user'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'user': instance.user,
    };

_User _$UserFromJson(Map<String, dynamic> json) => _User(
  id: json['id'] as String? ?? '',
  name: json['name'] as String? ?? '',
  email: json['email'] as String? ?? '',
  phone: json['phone'] as String? ?? '',
  gender: json['gender'] as String? ?? '',
  profileImage: json['profileImage'] as String? ?? '',
  dateOfBirth: json['dateOfBirth'] as String? ?? '',
  joinedAt: json['joinedAt'] as String? ?? '',
  userType: json['userType'] as String? ?? '',
  address: json['address'] == null
      ? null
      : Address.fromJson(json['address'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserToJson(_User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'gender': instance.gender,
  'profileImage': instance.profileImage,
  'dateOfBirth': instance.dateOfBirth,
  'joinedAt': instance.joinedAt,
  'userType': instance.userType,
  'address': instance.address,
};

_Address _$AddressFromJson(Map<String, dynamic> json) => _Address(
  city: json['city'] as String? ?? '',
  country: json['country'] as String? ?? '',
);

Map<String, dynamic> _$AddressToJson(_Address instance) => <String, dynamic>{
  'city': instance.city,
  'country': instance.country,
};
