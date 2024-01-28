import 'package:my_app_btw/src/config/repository/base_api_repository.dart';
import 'package:my_app_btw/src/config/resources/data_state.dart';
import 'package:my_app_btw/src/feature/auth/data/data_sources/auth_api_service.dart';
import 'package:my_app_btw/src/feature/auth/domain/entities/login_request_entity.dart';
import 'package:my_app_btw/src/feature/auth/domain/entities/login_response_entity.dart';
import 'package:my_app_btw/src/feature/auth/domain/repositories/auth_api_repositores.dart';

class AuthApiRepositoryImpl extends BaseApiRepository
    implements AuthApiRepository {
  final AuthApiService _authApiService;

  AuthApiRepositoryImpl(
    this._authApiService,
  );

  @override
  Future<DataState<LoginResponseEntity>> postLogin(
      {required LoginRequestEntity postLoginRequest}) {
    return getStateOf(
      request: () => _authApiService.postLogin(
        username: postLoginRequest.username,
        password: postLoginRequest.password,
      ),
    );
  }
}