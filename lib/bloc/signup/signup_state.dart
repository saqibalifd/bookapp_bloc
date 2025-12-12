part of 'signup_bloc.dart';

class SignupState extends Equatable {
  const SignupState({
    this.email = '',
    this.password = '',
    this.signupApi = const ApiResponse.completed(''),
  });

  final String email;
  final String password;
  final ApiResponse<String> signupApi;

  SignupState copyWith({
    String? email,
    String? password,
    ApiResponse<String>? signupApi,
  }) {
    return SignupState(
      email: email ?? this.email,
      password: password ?? this.password,
      signupApi: signupApi ?? this.signupApi,
    );
  }

  @override
  List<Object> get props => [email, password, signupApi];
}
