import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  final String? token;

  const LoginEntity({
    this.token,
  });

  const LoginEntity.initial({
    this.token = "",
  });

  @override
  List<Object?> get props {
    return [
      token,
    ];
  }
}
