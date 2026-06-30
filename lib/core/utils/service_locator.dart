import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:radwa_back/Features/Home/data/repos/home_repo_imp.dart';
import 'package:radwa_back/core/utils/api_service.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeReoImpl>(HomeReoImpl(getIt.get<ApiService>())); 
  // why not HomeRepo??
}
