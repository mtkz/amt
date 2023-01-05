import 'package:amt/data/common/app_exception.dart';
import 'package:amt/data/repo/auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthLoading()) {
    on<AuthEvent>((event, emit) async {
      try {
        if (event is AuthButtonClicked) {
          emit(AuthStarted());
          await AuthRepository().login();
          emit(AuthSuccess());
        }
      } catch (e) {
        if (e is DioError) {
          emit(AuthError(appException: AppException()));
        }
      }
    });
  }
}
