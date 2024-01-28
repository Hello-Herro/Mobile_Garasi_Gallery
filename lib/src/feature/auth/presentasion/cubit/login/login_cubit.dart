import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:my_app_btw/src/config/cubit/base_cubit.dart';
import 'package:my_app_btw/src/config/resources/data_state.dart';
import 'package:my_app_btw/src/feature/auth/domain/entities/login_entity.dart';
import 'package:my_app_btw/src/feature/auth/domain/entities/login_request_entity.dart';
import 'package:my_app_btw/src/feature/auth/domain/usecases/login_usecase.dart';

part 'login_state.dart';

class LoginCubit extends BaseCubit<LoginState, LoginEntity> {
  final PostLoginUsecase _postLoginUsecase;
  LoginCubit(this._postLoginUsecase)
      : super(LoginInitial(), const LoginEntity.initial());

  Future<void> postLogin(
    String username,
    String password,
  ) async {
    if (isBusy) {
      return;
    }

    await run(
      () async {
        try {
          emit(LoginLoading());

          final dataState = await _postLoginUsecase(
            LoginRequestEntity(
              username: username,
              password: password,
            ),
          );
          if (dataState is DataSuccess) {
            final data = dataState.data?.data;
            emit(
              LoginSuccess(
                login: data,
              ),
            );
          } else if (dataState is DataFailed) {
            emit(
              LoginFailed(
                exception: dataState.exception,
              ),
            );
          }
        } finally {
          emit(
            LoginInitial(),
          );
        }
      },
    );
  }
}
