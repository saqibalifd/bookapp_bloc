import 'package:bookapp/models/books/booksModel.dart';

abstract class BooksApiRepository {
  Future<BooksModel> fetchBooks();
}
