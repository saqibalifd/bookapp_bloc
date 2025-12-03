// import 'package:bookapp/data/network/network.dart';
// import 'package:bookapp/models/books/booksModel.dart';
// import 'package:bookapp/repository/books_api/books_repository.dart';

// class BooksHttpApiRepository implements BooksHttpApiRepository {
//   final _apiServices = NetworkApiService();

//   @override
//   Future<BooksModel> fetchBooks() async {
//     print('hello');
//     final response = await _apiServices.getApi(
//       '${ApiEndpoints.baseUrl} ${ApiEndpoints.getBooks}',
//     );

//     return BooksModel.fromJson(response);
//   }
// }
import 'package:bookapp/data/network/network_api_service.dart';
import 'package:bookapp/repository/books_api/books_repository.dart';

class BooksHttpApiRepository implements BooksApiRepository {
  final NetworkApiService _apiService = NetworkApiService();

  final String _endpoint =
      "https://675c38dc-686a-4ae9-86a0-3fdeeec97f93.mock.pstmn.io/books";

  @override
  Future<dynamic> fetchBooks() async {
    try {
      final response = await _apiService.getApi(_endpoint);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
