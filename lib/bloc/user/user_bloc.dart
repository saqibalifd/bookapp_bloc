import 'package:bloc/bloc.dart';
import 'package:bookapp/data/response/api_response.dart';
import 'package:bookapp/models/user/userModel.dart';
import 'package:bookapp/repository/user_api/user_api_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserApiRepository userApiRepository;

  UserBloc({required this.userApiRepository})
    : super(UserState(user: ApiResponse.loading())) {
    on<FetchUser>(fetchUser);
  }

  Future<void> fetchUser(FetchUser event, Emitter<UserState> emit) async {
    await userApiRepository
        .fetchUser()
        .then((response) {
          emit(state.copyWith(user: ApiResponse.completed(response)));
        })
        .onError((error, stackTrace) {
          if (kDebugMode) {
            print(stackTrace);
            print(error);
          }
          emit(state.copyWith(user: ApiResponse.error(error.toString())));
        });
  }
}
