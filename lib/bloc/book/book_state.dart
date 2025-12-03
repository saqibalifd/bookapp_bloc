part of 'book_bloc.dart';

// class BookState extends Equatable {
//   const BookState({required this.booksList});

//   final ApiResponse<BooksModel>? booksList;

//   BookState copyWith({ApiResponse<BooksModel>? booksList}) {
//     return BookState(booksList: booksList ?? this.booksList);
//   }

//   @override
//   List<Object?> get props => [booksList];
// }

class BookState extends Equatable {
  final ApiResponse<BooksModel>? booksList;

  const BookState({this.booksList});

  BookState copyWith({ApiResponse<BooksModel>? booksList}) {
    return BookState(booksList: booksList ?? this.booksList);
  }

  @override
  List<Object?> get props => [booksList];
}
