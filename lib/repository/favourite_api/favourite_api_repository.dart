import 'package:bookapp/models/favourite/favouriteBooksModel.dart';

abstract class FavouriteApiRepository {
  Future<FavouriteBooksModel> fetchFavouritBooks();
}
