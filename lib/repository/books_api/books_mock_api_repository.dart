import 'package:bookapp/models/books/booksModel.dart';
import 'package:bookapp/repository/books_api/books_repository.dart';

class BooksMockApiRepository implements BooksApiRepository {
  @override
  Future<BooksModel> fetchBooks() async {
    await Future.delayed(const Duration(seconds: 3));

    dynamic responseData = {
      "status": true,
      "total": 2,
      "categories": ["Fiction", "Technology"],
      "data": [
        {
          "id": 1,
          "thumbnail":
              "https://m.media-amazon.com/images/S/compressed.photo.goodreads.com/books/1363452191i/13326831.jpg",
          "bookName": "The Lost Kingdom",
          "authorName": "John Carter",
          "aboutEditor": "Well-known editor specializing in fiction novels.",
          "overview": "A thrilling adventure into the forgotten lands.",
          "preview": "https://example.com/preview1.pdf",
          "rating": 4.5,
          "price": 1200.0,
          "quantities": 10,
          "category": "Fiction",
          "language": "English",
          "publisher": "Dream Publishers",
          "publishedDate": "2022-01-15",
          "pages": 320,
          "isbn": "978-3-16-148410-0",
          "createdAt": "2023-01-01T12:00:00Z",
          "updatedAt": "2023-06-01T12:00:00Z",
        },
        {
          "id": 2,
          "thumbnail":
              "https://m.media-amazon.com/images/I/41NIF2hNUyL._AC_UF1000,1000_QL80_.jpg",
          "bookName": "Flutter Mastery",
          "authorName": "Saqib Ali",
          "aboutEditor": "Expert in mobile UI technologies.",
          "overview":
              "Learn Flutter with real-world examples and best practices.",
          "preview": "https://example.com/preview2.pdf",
          "rating": 4.8,
          "price": 1800.0,
          "quantities": 5,
          "category": "Technology",
          "language": "English",
          "publisher": "TechBooks Ltd",
          "publishedDate": "2023-02-20",
          "pages": 450,
          "isbn": "978-1-23-456789-7",
          "createdAt": "2023-02-20T10:00:00Z",
          "updatedAt": "2023-05-10T10:00:00Z",
        },
      ],
    };

    return BooksModel.fromJson(responseData);
  }
}
