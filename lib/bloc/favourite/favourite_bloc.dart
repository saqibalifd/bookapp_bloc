import 'package:bloc/bloc.dart';
import 'package:bookapp/data/response/api_response.dart';
import 'package:bookapp/models/favourite/favouriteBooksModel.dart';
import 'package:bookapp/repository/favourite_api/favourite_api_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

part 'favourite_event.dart';
part 'favourite_state.dart';

class FavouriteBloc extends Bloc<FavouriteEvent, FavouriteState> {
  FavouriteApiRepository favouriteApiRepository;

  FavouriteBloc({required this.favouriteApiRepository})
    : super(FavouriteState(favBookList: ApiResponse.loading())) {
    on<FetchFavouriteBooks>(fetchFavBooksListApi);
  }

  Future<void> fetchFavBooksListApi(
    FetchFavouriteBooks event,
    Emitter<FavouriteState> emit,
  ) async {
    await favouriteApiRepository
        .fetchFavouritBooks()
        .then((response) {
          emit(state.copyWith(favBookList: ApiResponse.completed(response)));
        })
        .onError((error, stackTrace) {
          if (kDebugMode) {
            print(stackTrace);
            print(error);
          }
          emit(
            state.copyWith(favBookList: ApiResponse.error(error.toString())),
          );
        });
  }
}
