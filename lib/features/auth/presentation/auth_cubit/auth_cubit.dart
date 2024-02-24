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
  bool termsAndCondtionCheckBoxValue = false;
  bool? obscurePasswordTextValue = true;

  signUpWithEmailAndPassword() async {}

  updateTermsAndCondtionCheckBox({required newValue}) {
    termsAndCondtionCheckBoxValue = newValue;
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
}
