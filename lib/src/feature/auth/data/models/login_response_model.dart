import 'package:my_app_btw/src/feature/auth/domain/entities/login_response_entity.dart';

import 'login_model.dart';

class LoginResponseModel extends LoginResponseEntity {
  const LoginResponseModel({
    bool? success,
    String? message,
    LoginModel? data,
  }) : super(
          success: success,
          message: message,
          data: data,
        );

  factory LoginResponseModel.fromMap(Map<String, dynamic> json) {
    return LoginResponseModel(
      success: json["success"],
      message: json["message"],
      data: LoginModel.fromJson(json['data']),
    );
  }
}
