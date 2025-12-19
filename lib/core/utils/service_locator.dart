import 'package:BookApp/core/utils/api_servise.dart';
import 'package:BookApp/features/category/data/repos/result_category_repo_impl.dart';
import 'package:BookApp/features/home/data/repos/home_repo_impl.dart';
import 'package:BookApp/features/search/data/repos/search_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServise>(ApiServise(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiServise>()));
}

void setupSearchLocator() {
  getIt.registerSingleton<SearchRepoImpl>(SearchRepoImpl(ApiServise(Dio())));
}

void setupresultcategoryLocator() {
  getIt.registerSingleton<ResultCategoryRepoImpl>(
    ResultCategoryRepoImpl(ApiServise(Dio())),
  );
}
