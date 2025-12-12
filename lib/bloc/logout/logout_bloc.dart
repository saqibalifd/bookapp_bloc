import 'package:bookapp/repository/auth_api/auth_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'logout_State.dart';
part 'logout_event.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  final AuthApiRepository authRepository;

  LogoutBloc(this.authRepository) : super(AuthInitial()) {
    on<LogoutEvent>((event, emit) async {
      emit(LogoutLoadingState());

      try {
        await authRepository.logout();
        emit(LogoutSuccessState());
      } catch (e) {
        emit(LogoutErrorState(e.toString()));
      }
    });
  }
}
