part of 'favourite_bloc.dart';

class FavouriteState extends Equatable {
  const FavouriteState({required this.favBookList});

  final ApiResponse<FavouriteBooksModel>? favBookList;

  FavouriteState copyWith({ApiResponse<FavouriteBooksModel>? favBookList}) {
    return FavouriteState(favBookList: favBookList ?? this.favBookList);
  }

  @override
  List<Object?> get props => [favBookList];
}
