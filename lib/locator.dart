
import 'package:crypto_currency_app/repository/home_repository.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => HomeRepository());

}