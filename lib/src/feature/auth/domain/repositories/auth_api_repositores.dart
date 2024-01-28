import 'package:my_app_btw/src/config/resources/data_state.dart';
import 'package:my_app_btw/src/feature/auth/domain/entities/login_request_entity.dart';
import 'package:my_app_btw/src/feature/auth/domain/entities/login_response_entity.dart';

abstract class AuthApiRepository {

  Future<DataState<LoginResponseEntity>> postLogin(
      {required LoginRequestEntity postLoginRequest});
}