import 'package:bloc/bloc.dart';
import 'package:bookapp/data/response/api_response.dart';
import 'package:bookapp/models/user/userModel.dart';
import 'package:bookapp/repository/user_api/user_api_repository.dart';
import 'package:bookapp/services/storage/local_storage.dart';
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
    final LocalStorage localStorage = LocalStorage();

    await userApiRepository
        .fetchUser()
        .then((response) async {
          await localStorage.setValue("user_id", response.user?.id ?? '');
          await localStorage.setValue("user_name", response.user?.name ?? '');
          await localStorage.setValue("user_email", response.user?.email ?? '');
          await localStorage.setValue("user_phone", response.user?.phone ?? '');
          await localStorage.setValue(
            "user_gender",
            response.user?.gender ?? '',
          );
          await localStorage.setValue(
            "profile_image",
            response.user?.profileImage ?? '',
          );
          await localStorage.setValue("dob", response.user?.dateOfBirth ?? '');
          await localStorage.setValue(
            "joined_at",
            response.user?.joinedAt ?? '',
          );
          await localStorage.setValue(
            "user_type",
            response.user?.userType ?? '',
          );

          // Address
          await localStorage.setValue(
            "address_city",
            response.user?.address?.city ?? '',
          );
          await localStorage.setValue(
            "address_country",
            response.user?.address?.country ?? '',
          );
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
