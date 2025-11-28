import 'package:bloc/bloc.dart';
import 'package:bookapp/services/session_manager/session_controller.dart';
import 'package:equatable/equatable.dart';
import '../../models/login/loginModel.dart';
import '../../repository/auth_api/auth_api_repository.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthApiRepository repository;

  LoginBloc(this.repository) : super(LoginInitial()) {
    on<LoginButtonPressed>((event, emit) async {
      emit(LoginLoading());

      try {
        final data = {
          "email": event.email,
          "password": event.password,
        };

        final response = await repository.loginApi(data);

        if (response.token.isNotEmpty) {
          await SessionController().saveUserInPreference(response);

          emit(LoginSuccess(response));
        } else {
          emit(LoginError(response.error));
        }
      } catch (e) {
        emit(LoginError(e.toString()));
      }
    });
  }
}