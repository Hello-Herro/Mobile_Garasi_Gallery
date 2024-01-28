import 'package:dio/dio.dart';
import 'package:my_app_btw/src/config/constants/strings.dart';
import 'package:my_app_btw/src/feature/auth/data/models/login_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_service.g.dart';

@RestApi(baseUrl: baseUrl, parser: Parser.MapSerializable)
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;

  @POST('/login')
  Future<HttpResponse<LoginResponseModel>> postLogin({
    @Field('username') required String username,
    @Field('password') required String password,
  });
}