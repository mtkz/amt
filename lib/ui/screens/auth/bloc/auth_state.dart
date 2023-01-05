part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthLoading extends AuthState {}

class AuthStarted extends AuthState {}

class AuthSuccess extends AuthState {}

class AuthError extends AuthState {
  final AppException appException;

  AuthError({required this.appException});
}
