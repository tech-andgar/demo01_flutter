import 'package:get_it/get_it.dart';
import 'package:demo_andres_garcia_needzaio/core/services/api_graphql_service.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton(() => ApiGraphQL());
}