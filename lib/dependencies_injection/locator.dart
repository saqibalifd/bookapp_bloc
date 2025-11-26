

import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

class ServiceLocator {
  void servicesLocator() {
    // getIt.registerLazySingleton<AuthApiRepository>(
    //   () => AuthHttpApiRepository(),
    // ); 
    // getIt.registerLazySingleton<MoviesApiRepository>(
    //   () => MoviesHttpApiRepository(),
    // ); 
  }
}