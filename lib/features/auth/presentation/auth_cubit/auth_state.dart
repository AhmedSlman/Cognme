part of 'auth_cubit.dart';

class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpLoadingState extends AuthState {}

final class SignUpSuccessState extends AuthState {}

final class SignUpFailuerState extends AuthState {
  final String errMessage;

  SignUpFailuerState({required this.errMessage});
}

final class TermsAndCondtionUpdataState extends AuthState {}

final class ObscurePasswordTextUpdateState extends AuthState {}

final class SignInLoadingState extends AuthState {}

final class SignInSuccessState extends AuthState {}

final class SignInFailuerState extends AuthState {
  final String errMessage;

  SignInFailuerState({required this.errMessage});
}

final class ResetPasswordLoadingState extends AuthState {}

final class ResetPasswordSuccessState extends AuthState {}

final class ResetPasswordFailuerState extends AuthState {
  final String errMessage;

  ResetPasswordFailuerState({required this.errMessage});
}
