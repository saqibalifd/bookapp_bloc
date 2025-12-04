import 'package:freezed_annotation/freezed_annotation.dart';

part 'userModel.freezed.dart';
part 'userModel.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    @Default(UserData()) UserData data,
    @Default(SupportData()) SupportData support,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json) =>
      _$UserModelFromJson(json);
}

@freezed
abstract class UserData with _$UserData {
  const factory UserData({
    @Default(0) int id,
    @Default('') String email,
    @Default('') String first_name,
    @Default('') String last_name,
    @Default('') String avatar,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}

@freezed
abstract class SupportData with _$SupportData {
  const factory SupportData({
    @Default('') String url,
    @Default('') String text,
  }) = _SupportData;

  factory SupportData.fromJson(Map<String, Object?> json) =>
      _$SupportDataFromJson(json);
}
