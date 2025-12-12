part of 'signup_bloc.dart';

sealed class SignupEvent extends Equatable {
  const SignupEvent();
  @override
  List<Object> get props => [];
}

class EmailChanged extends SignupEvent {
  final String email;
  const EmailChanged({required this.email});
  @override
  List<Object> get props => [email];
}

class PasswordChanged extends SignupEvent {
  final String password;
  const PasswordChanged({required this.password});

  @override
  List<Object> get props => [password];
}

class SignupApi extends SignupEvent {
  const SignupApi();
}
