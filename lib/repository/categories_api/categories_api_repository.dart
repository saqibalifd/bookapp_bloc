import 'package:bookapp/models/categories/categoriesModel.dart';

abstract class CategoriesApiRepository {
  Future<CategoriesModel> fetchCategories();
}
