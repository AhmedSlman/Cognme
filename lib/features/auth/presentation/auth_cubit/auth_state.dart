part of 'auth_cubit.dart';

class AuthState {}

final class AuthInitial extends AuthState {}

final class RegisterLoadingState extends AuthState {}

final class RegisterSuccessState extends AuthState {
  final String message;

  RegisterSuccessState({required this.message});
}

final class RegisterFailureState extends AuthState {
  final String errMessage;

  RegisterFailureState({required this.errMessage});
}

final class SignInLoadingState extends AuthState {}

final class SignInSuccessState extends AuthState {}

final class SignInFailureState extends AuthState {
  final String errMessage;

  SignInFailureState({required this.errMessage});
}

final class UserLoggedInState extends AuthState {
  final bool isLoggedIn;

  UserLoggedInState({required this.isLoggedIn});
}

final class ResetPasswordLoadingState extends AuthState {}

final class ResetPasswordSuccessState extends AuthState {}

final class ResetPasswordFailureState extends AuthState {
  final String errMessage;

  ResetPasswordFailureState({required this.errMessage});
}

final class TermsAndConditionUpdateState extends AuthState {}

final class ObscurePasswordTextUpdateState extends AuthState {}
