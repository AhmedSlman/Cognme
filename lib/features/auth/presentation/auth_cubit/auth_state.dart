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
