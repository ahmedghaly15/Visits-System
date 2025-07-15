import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'src/core/api/dio_client.dart';
import 'src/features/home/data/api/home_api_service.dart';
import 'src/features/home/data/repo/home_repo.dart';
import 'src/features/home/presentation/cubit/home_cubit.dart';
import 'src/features/login/data/api/login_api_service.dart';
import 'src/features/login/data/repo/login_repo.dart';
import 'src/features/login/presentation/cubit/login_cubit.dart';

final getIt = GetIt.instance;

void setupDI() {
  // register external dependencies
  getIt.registerLazySingleton<Dio>(() => DioClient.getDio());

  // register api services
  getIt.registerLazySingleton(() => LoginApiService(getIt.get<Dio>()));
  getIt.registerLazySingleton<HomeApiService>(
    () => HomeApiService(getIt.get<Dio>()),
  );

  // register repositories
  getIt.registerLazySingleton(() => LoginRepo(getIt.get<LoginApiService>()));
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepo(getIt.get<HomeApiService>()),
  );

  // register cubits
  getIt.registerLazySingleton(() => LoginCubit(getIt.get<LoginRepo>()));
  getIt.registerLazySingleton(() => HomeCubit(getIt.get<HomeRepo>()));
}
