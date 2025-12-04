// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  data: json['data'] == null
      ? const UserData()
      : UserData.fromJson(json['data'] as Map<String, dynamic>),
  support: json['support'] == null
      ? const SupportData()
      : SupportData.fromJson(json['support'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{'data': instance.data, 'support': instance.support};

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
  id: (json['id'] as num?)?.toInt() ?? 0,
  email: json['email'] as String? ?? '',
  first_name: json['first_name'] as String? ?? '',
  last_name: json['last_name'] as String? ?? '',
  avatar: json['avatar'] as String? ?? '',
);

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
  'id': instance.id,
  'email': instance.email,
  'first_name': instance.first_name,
  'last_name': instance.last_name,
  'avatar': instance.avatar,
};

_SupportData _$SupportDataFromJson(Map<String, dynamic> json) => _SupportData(
  url: json['url'] as String? ?? '',
  text: json['text'] as String? ?? '',
);

Map<String, dynamic> _$SupportDataToJson(_SupportData instance) =>
    <String, dynamic>{'url': instance.url, 'text': instance.text};
