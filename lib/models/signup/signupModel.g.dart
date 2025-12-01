// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signupModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignupModel _$SignupModelFromJson(Map<String, dynamic> json) => _SignupModel(
  id: (json['id'] as num?)?.toInt() ?? 0,
  token: json['token'] as String? ?? '',
  error: json['error'] as String? ?? '',
);

Map<String, dynamic> _$SignupModelToJson(_SignupModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'token': instance.token,
      'error': instance.error,
    };
