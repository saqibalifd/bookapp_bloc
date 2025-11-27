import 'package:freezed_annotation/freezed_annotation.dart';

part 'signupModel.freezed.dart';
part 'signupModel.g.dart';

@freezed
abstract class SignupModel with _$SignupModel {
  const factory SignupModel({required int id, required String token}) =
      _SignupModel;

  factory SignupModel.fromJson(Map<String, Object?> json) =>
      _$SignupModelFromJson(json);
}
