import 'package:bookapp/repository/auth_api/auth_api_repository.dart';
import 'package:bookapp/repository/auth_api/auth_http_api_repository.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class ServiceLocator {
  void servicesLocator() {
    getIt.registerLazySingleton<AuthApiRepository>(
      () => AuthHttpApiRepository(),
    );
    // getIt.registerLazySingleton<MoviesApiRepository>(
    //   () => MoviesHttpApiRepository(),
    // );
  }
}
