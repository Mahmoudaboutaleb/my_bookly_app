import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_bookly_app/core/utilies/api_service.dart';
import 'package:my_bookly_app/features/home/data/repos/home_repo_implement.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<HomeRepoImplement>(
      HomeRepoImplement(apiService: getIt.get<ApiService>()));
}
