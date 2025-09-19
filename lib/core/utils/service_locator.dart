// import 'package:booky_app/Futures/home/Data/repos/home.repo.dart';
// import 'package:booky_app/Futures/home/Data/repos/home_repo_imp.dart';
// import 'package:booky_app/core/utils/apiServices.dart';
// import 'package:dio/dio.dart';
// import 'package:get_it/get_it.dart';
//
// final getIt = GetIt.instance;
//
// void setup() {
//   getIt.registerSingleton<ApiService>(ApiService(Dio()));
//
//   getIt.registerSingleton<HomeRepo>(
//     HomeRepoImp(apiService: getIt.get<ApiService>()),
//   );
// }
import 'package:booky_app/Futures/home/Data/repos/home.repo.dart';
import 'package:booky_app/Futures/home/Data/repos/home_repo_imp.dart';
import 'package:booky_app/core/utils/apiServices.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepo>(HomeRepoImp(apiService: getIt.get()));
}
