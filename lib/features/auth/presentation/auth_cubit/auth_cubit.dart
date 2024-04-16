import 'package:bloc/bloc.dart';
import 'package:cognme/features/auth/data/repo/auth_repo.dart';
import 'package:flutter/material.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit( this.authRepo) : super(AuthInitial());
  final AuthRepo authRepo;
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  String? confirmPassword;
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  GlobalKey<FormState> signInFormKey = GlobalKey();
  GlobalKey<FormState> forgotPasswordFormKey = GlobalKey();
  bool termsAndCondtionCheckBoxValue = false;
  bool? obscurePasswordTextValue = true;

  Future<void> registerUser(
      {required String name,
      required String email,
      required String password,
      required String confirmPassword}) async {
    emit(RegisterLoadingState());
    final response = await authRepo.registerUser(
      name: name,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
    );
  }

  Future<void> verifyEmail() async {}

  void updateTermsAndCondtionCheckBox({required newValue}) {
    termsAndCondtionCheckBoxValue = newValue;
    emit(TermsAndConditionUpdateState());
  }

  void obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }

  Future<void> sigInWithEmailAndPassword() async {}

  Future<void> resetPasswordWithLink() async {}

  Future<void> addUserProfile() async {}
}
