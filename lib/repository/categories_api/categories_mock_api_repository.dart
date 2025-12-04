import 'package:bookapp/models/categories/categoriesModel.dart';
import 'package:bookapp/repository/categories_api/categories_repository.dart';

class CategoriesMockApi implements CategoriesApiRepository {
  @override
  Future<CategoriesModel> fetchCategories() async {
    await Future.delayed(const Duration(seconds: 3));

    dynamic responseData = {
      "categories": [
        {"id": 1, "name": "Fiction"},
        {"id": 2, "name": "Non-Fiction"},
        {"id": 3, "name": "Mystery"},
        {"id": 4, "name": "Thriller"},
      ],
    };
    return CategoriesModel.fromJson(responseData);
  }
}
