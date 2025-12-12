import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bookapp/data/response/api_response.dart';
import 'package:bookapp/services/session_manager/session_controller.dart';
import 'package:equatable/equatable.dart';
import '../../repository/auth_api/auth_api_repository.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvents, LoginStates> {
  AuthApiRepository authApiRepository;

  LoginBloc({required this.authApiRepository}) : super(const LoginStates()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginApi>(_onFormSubmitted);
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginStates> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginStates> emit) {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _onFormSubmitted(
    LoginApi event,
    Emitter<LoginStates> emit,
  ) async {
    Map<String, String> data = {
      'email': state.email,
      'password': state.password,
    };
    emit(state.copyWith(loginApi: const ApiResponse.loading()));

    await authApiRepository
        .loginApi(data)
        .then((value) async {
          if (value.error.isNotEmpty) {
            emit(state.copyWith(loginApi: ApiResponse.error(value.error)));
          } else {
            await SessionController().saveUserInPreference(value);
            await SessionController().getUserFromPreference();
            emit(
              state.copyWith(loginApi: const ApiResponse.completed('lOGIN')),
            );
          }
        })
        .onError((error, stackTrace) {
          emit(state.copyWith(loginApi: ApiResponse.error(error.toString())));
        });
  }
}
