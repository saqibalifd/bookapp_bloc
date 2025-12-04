import 'package:bookapp/data/network/network.dart';
import 'package:bookapp/models/categories/categoriesModel.dart';
import 'package:bookapp/repository/categories_api/categories_repository.dart';

class CategoriesHttpApi implements CategoriesApiRepository {
  final _apiServices = NetworkApiService();

  @override
  Future<CategoriesModel> fetchCategories() async {
    final response = await _apiServices.getApi('');

    return CategoriesModel.fromJson(response);
  }
}
