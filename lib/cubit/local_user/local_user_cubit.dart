import 'package:bookapp/models/user/userModel.dart';
import 'package:bookapp/services/local_user/local_user_controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocalUserState {
  final UserModel? user;
  const LocalUserState({this.user});
}

class LocalUserCubit extends Cubit<LocalUserState> {
  LocalUserCubit() : super(const LocalUserState());

  void loadUser() async {
    final data = await LocalUserController().getLocalUser();
    emit(LocalUserState(user: data));
  }
}
