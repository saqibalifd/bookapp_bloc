import 'package:bookapp/data/response/api_response.dart';
import 'package:bookapp/models/categories/categoriesModel.dart';
import 'package:bookapp/repository/categories_api/categories_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'categories_event.dart';
part 'categories_state.dart';

class CatogoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesApiRepository categoriesApiRepository;

  CatogoriesBloc({required this.categoriesApiRepository})
    : super(CategoriesState(categoriesList: ApiResponse.loading())) {
    on<FetchCategories>(fetchCategoriesListApi);
  }

  Future<void> fetchCategoriesListApi(
    FetchCategories event,
    Emitter<CategoriesState> emit,
  ) async {
    await categoriesApiRepository
        .fetchCategories()
        .then((response) {
          emit(state.copyWith(categoriesList: ApiResponse.completed(response)));
        })
        .onError((error, stackTrace) {
          if (kDebugMode) {
            print(stackTrace);
            print(error);
          }
          emit(
            state.copyWith(categoriesList: ApiResponse.error(error.toString())),
          );
        });
  }
}
