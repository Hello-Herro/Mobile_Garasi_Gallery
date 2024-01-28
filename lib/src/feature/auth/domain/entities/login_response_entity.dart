import 'package:equatable/equatable.dart';

import 'login_entity.dart';

class LoginResponseEntity extends Equatable {
  final bool? success;
  final String? message;
  final LoginEntity? data;

  const LoginResponseEntity({
    this.success,
    this.message,
    this.data,
  });

  const LoginResponseEntity.initial({
    this.success = false,
    this.message = "",
    this.data = const LoginEntity.initial(),
  });

  @override
  List<Object?> get props {
    return [
      success,
      message,
      data,
    ];
  }
}
