import 'package:bloc/bloc.dart';
import 'package:bookapp/data/response/api_response.dart';
import 'package:bookapp/models/books/booksModel.dart';

import 'package:bookapp/repository/books_api/books_repository.dart';
import 'package:equatable/equatable.dart';

part 'book_event.dart';
part 'book_state.dart';

// class BookBloc extends Bloc<BookEvent, BookState> {
//   BooksApiRepository booksApiRepository;

//   BookBloc({required this.booksApiRepository})
//     : super(BookState(booksList: ApiResponse.loading())) {
//     on<BooksFetch>(fetchBooksListApi);
//   }

//   Future<void> fetchBooksListApi(
//     BooksFetch event,
//     Emitter<BookState> emit,
//   ) async {
//     await booksApiRepository
//         .fetchBooks()
//         .then((response) {
//           emit(state.copyWith(booksList: ApiResponse.completed(response)));
//         })
//         .onError((error, stackTrace) {
//           if (kDebugMode) {
//             print(stackTrace);
//             print(error);
//           }
//           emit(state.copyWith(booksList: ApiResponse.error(error.toString())));
//         });
//   }
// }

class BookBloc extends Bloc<BookEvent, BookState> {
  final BooksApiRepository booksApiRepository;

  BookBloc({required this.booksApiRepository})
    : super(const BookState(booksList: ApiResponse.loading())) {
    on<FetchBooksEvent>(_fetchBooks);
  }

  Future<void> _fetchBooks(
    FetchBooksEvent event,
    Emitter<BookState> emit,
  ) async {
    emit(state.copyWith(booksList: const ApiResponse.loading()));

    try {
      final json = await booksApiRepository.fetchBooks();
      final model = BooksModel.fromJson(json);

      emit(state.copyWith(booksList: ApiResponse.completed(model)));
    } catch (e) {
      emit(state.copyWith(booksList: ApiResponse.error(e.toString())));
    }
  }
}
