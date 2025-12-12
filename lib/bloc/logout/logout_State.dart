part of 'logout_bloc.dart';

abstract class LogoutState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthInitial extends LogoutState {}

class LogoutLoadingState extends LogoutState {}

class LogoutSuccessState extends LogoutState {}

class LogoutErrorState extends LogoutState {
  final String message;

  LogoutErrorState(this.message);

  @override
  List<Object?> get props => [message];
}
