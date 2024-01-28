import 'package:my_app_btw/src/feature/auth/domain/entities/login_entity.dart';

class LoginModel extends LoginEntity {
  const LoginModel({
    String? token,
  }) : super(
          token: token,
        );

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      token: json["token"],
    );
  }
}
