part of 'catogories_bloc.dart';

class CategoriesState extends Equatable {
  const CategoriesState({required this.categoriesList});

  final ApiResponse<CategoriesModel>? categoriesList;

  CategoriesState copyWith({ApiResponse<CategoriesModel>? categoriesList}) {
    return CategoriesState(
      categoriesList: categoriesList ?? this.categoriesList,
    );
  }

  @override
  List<Object?> get props => [categoriesList];
}
