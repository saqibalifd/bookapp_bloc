import 'package:bookapp/repository/auth_api/auth_api_repository.dart';
import 'package:bookapp/repository/auth_api/auth_http_api_repository.dart';
import 'package:bookapp/repository/books_api/books_repository.dart';
import 'package:bookapp/repository/categories_api/categories_api_repository.dart';
import 'package:bookapp/repository/categories_api/categories_mock_api_repository.dart';
import 'package:bookapp/repository/user_api/user_repository.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class ServiceLocator {
  void servicesLocator() {
    getIt.registerLazySingleton<AuthApiRepository>(
      () => AuthHttpApiRepository(),
    );
    getIt.registerLazySingleton<BooksApiRepository>(
      () => BooksHttpApiRepository(),
    );
    getIt.registerLazySingleton<CategoriesApiRepository>(
      () => CategoriesMockApi(),
    );
    getIt.registerLazySingleton<UserApiRepository>(
      () => UserHttpApiRepository(),
    );
  }
}
