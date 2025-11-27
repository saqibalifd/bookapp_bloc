import 'package:freezed_annotation/freezed_annotation.dart';

part 'loginModel.freezed.dart';
part 'loginModel.g.dart';

@freezed
abstract class LoginModel with _$LoginModel {
  const factory LoginModel({
    @Default('') String token,
    @Default('') String error,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, Object?> json) =>
      _$LoginModelFromJson(json);
}
