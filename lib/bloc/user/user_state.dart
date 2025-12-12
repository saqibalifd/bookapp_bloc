part of 'user_bloc.dart';

class UserState extends Equatable {
  const UserState({required this.user});

  final ApiResponse<UserModel>? user;

  UserState copyWith({ApiResponse<UserModel>? user}) {
    return UserState(user: user ?? this.user);
  }

  @override
  List<Object?> get props => [user];
}
