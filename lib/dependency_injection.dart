import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:my_app_btw/src/config/storage_source/secure_storage_repository.dart';
import 'package:my_app_btw/src/config/storage_source/secure_storage_source.dart';
import 'package:my_app_btw/src/feature/auth/data/data_sources/auth_api_service.dart';
import 'package:my_app_btw/src/feature/auth/data/repositories/auth_api_repository_impl.dart';
import 'package:my_app_btw/src/feature/auth/domain/repositories/auth_api_repositores.dart';
import 'package:my_app_btw/src/feature/auth/domain/usecases/login_usecase.dart';
import 'package:my_app_btw/src/feature/auth/presentasion/cubit/login/login_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;

Future<void> initializeDependencies() async {
  final dio = Dio();
  dio.interceptors.add(AwesomeDioInterceptor());
  const flutterSecureStorage = FlutterSecureStorage();
  final prefs = await SharedPreferences.getInstance();

  locator.registerSingleton<Dio>(dio);
  locator.registerSingleton<FlutterSecureStorage>(flutterSecureStorage);
  locator.registerSingleton<SharedPreferences>(prefs);

  locator.registerSingleton<SecureStorageSource>(
    SecureStorageSourceImpl(locator<FlutterSecureStorage>()),
  );

  locator.registerSingleton<AuthApiService>(
    AuthApiService(locator<Dio>()),
  );

  locator.registerSingleton<AuthApiRepository>(
    AuthApiRepositoryImpl(
      locator<AuthApiService>(),
    ),
  );

  locator.registerSingleton<SecureStorageRepository>(
    SecureStorageRepositoryImpl(
      locator<SecureStorageSource>(),
    ),
  );

  locator.registerLazySingleton(
    () => PostLoginUsecase(
      repository: locator(),
      secureStorageRepository: locator(),
    ),
  );
}

Future<void> initializeBlocDependencies() async {
  locator.registerLazySingleton(
    () => LoginCubit(
      locator(),
    ),
  );
}
