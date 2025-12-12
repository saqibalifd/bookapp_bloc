part of 'logout_bloc.dart';

abstract class LogoutEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class Logout extends LogoutEvent {}
