part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class Authstarted extends AuthEvent {}

class AuthButtonClicked extends AuthEvent {
  final String identifier;
  final String password;

  AuthButtonClicked({
    required this.identifier,
    required this.password,
  });
}
