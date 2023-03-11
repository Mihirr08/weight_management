part of 'authentication_cubit.dart';

@immutable
abstract class AuthenticationState {}

class AuthenticationInitial extends AuthenticationState {}

class AuthenticationLoading extends AuthenticationState {}

class AuthenticationError extends AuthenticationState {
  final String errorText;

  AuthenticationError(this.errorText);
}

class AuthenticationSuccess extends AuthenticationState {
  final UserCredential user;

  AuthenticationSuccess(this.user);
}
