part of 'login_cubit.dart';

sealed class LoginState extends Equatable {
  final String? message;
  final LoginEntity? login;
  final DioException? exception;
  const LoginState({
    this.message,
    this.login,
    this.exception,
  });

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {
  const LoginSuccess({
    super.message,
    super.login,
  });
}

class LoginFailed extends LoginState {
  const LoginFailed({
    super.message,
    super.exception,
  });
}
