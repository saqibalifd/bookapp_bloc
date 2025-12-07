import 'package:bookapp/data/network/network.dart';
import 'package:bookapp/models/favourite/favouriteBooksModel.dart';
import 'package:bookapp/repository/favourite_api/favourite_repository.dart';

class FavouriteHttpApiRepository implements FavouriteApiRepository {
  final _apiServices = NetworkApiService();

  @override
  Future<FavouriteBooksModel> fetchFavouritBooks() async {
    final response = await _apiServices.getApi(ApiEndpoints.favouriteBooks);

    return FavouriteBooksModel.fromJson(response);
  }
}
