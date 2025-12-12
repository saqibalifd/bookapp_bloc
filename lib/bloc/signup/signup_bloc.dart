import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bookapp/data/response/api_response.dart';
import 'package:bookapp/services/session_manager/session_controller.dart';
import 'package:equatable/equatable.dart';
import '../../repository/auth_api/auth_api_repository.dart';
part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  AuthApiRepository authApiRepository;

  SignupBloc({required this.authApiRepository}) : super(const SignupState()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<SignupApi>(_onFormSubmitted);
  }

  void _onEmailChanged(EmailChanged event, Emitter<SignupState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<SignupState> emit) {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _onFormSubmitted(
    SignupApi event,
    Emitter<SignupState> emit,
  ) async {
    Map<String, String> data = {
      'email': state.email,
      'password': state.password,
    };
    emit(state.copyWith(signupApi: const ApiResponse.loading()));

    await authApiRepository
        .signupApi(data)
        .then((value) async {
          if (value.error.isNotEmpty) {
            emit(state.copyWith(signupApi: ApiResponse.error(value.error)));
          } else {
            await SessionController().saveUserInPreference(value);
            await SessionController().getUserFromPreference();
            emit(
              state.copyWith(signupApi: const ApiResponse.completed('SIGNUP')),
            );
          }
        })
        .onError((error, stackTrace) {
          emit(state.copyWith(signupApi: ApiResponse.error(error.toString())));
        });
  }
}
