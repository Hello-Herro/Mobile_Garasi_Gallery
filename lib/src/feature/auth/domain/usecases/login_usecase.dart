

import 'package:my_app_btw/src/config/resources/data_state.dart';
import 'package:my_app_btw/src/config/storage_source/secure_storage_repository.dart';
import 'package:my_app_btw/src/config/usecases/usecase.dart';
import 'package:my_app_btw/src/feature/auth/domain/entities/login_request_entity.dart';
import 'package:my_app_btw/src/feature/auth/domain/entities/login_response_entity.dart';
import 'package:my_app_btw/src/feature/auth/domain/repositories/auth_api_repositores.dart';

class PostLoginUsecase
    implements UseCase<LoginResponseEntity, LoginRequestEntity> {
  final AuthApiRepository repository;
  final SecureStorageRepository secureStorageRepository;

  PostLoginUsecase({
    required this.repository,
    required this.secureStorageRepository,
  });

  @override
  Future<DataState<LoginResponseEntity>> call(LoginRequestEntity params) async {
    return await repository.postLogin(
      postLoginRequest: LoginRequestEntity(
        username: params.username,
        password: params.password,
      ),
    );
  }
}
