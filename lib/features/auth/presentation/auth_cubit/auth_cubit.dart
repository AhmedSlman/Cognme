import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? emailAddress;
  String? password;
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  GlobalKey<FormState> signInFormKey = GlobalKey();
  GlobalKey<FormState> forgotPasswordFormKey = GlobalKey();
  bool termsAndConditionCheckBoxValue = false;
  bool? obscurePasswordTextValue = true;

  Future<void> signUpWithEmailAndPassword() async {}

  Future<void> verifyEmail() async {}

  void updateTermsAndCondtionCheckBox({required newValue}) {
    termsAndConditionCheckBoxValue = newValue;
    emit(TermsAndCondtionUpdataState());
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
