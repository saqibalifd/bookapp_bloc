import 'package:bookapp/data/network/network.dart';
import 'package:bookapp/models/books/booksModel.dart';
import 'package:bookapp/repository/books_api/books_api_repository.dart';

class BooksHttpApiRepository implements BooksApiRepository {
  final _apiServices = NetworkApiService();

  @override
  Future<BooksModel> fetchBooks() async {
    print('hello');
    final response = await _apiServices.getApi(
      '${ApiEndpoints.baseUrl} ${ApiEndpoints.getBooks}',
    );

    return BooksModel.fromJson(response);
  }
}
