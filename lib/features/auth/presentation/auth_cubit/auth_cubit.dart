import 'package:bloc/bloc.dart';
import 'package:cognme/features/auth/data/repo/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  late AuthRepo authRepo;
  String? name;
  String? lastName;
  String? emailAddress;
  String? password;
  String? confirmPassword;
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  GlobalKey<FormState> signInFormKey = GlobalKey();
  GlobalKey<FormState> forgotPasswordFormKey = GlobalKey();
  bool termsAndCondtionCheckBoxValue = false;
  bool? obscurePasswordTextValue = true;
  late SharedPreferences pref;

  bool? _isUserLoggedIn;
  bool get isUserLoggedIn {
    if (_isUserLoggedIn != null) {
      _isUserLoggedIn = pref.getBool("isUserLoggedIn") ?? false;
    }
    return _isUserLoggedIn!;
  }

  void setUserLoggedIn(bool isLoggedIn) async {
    _isUserLoggedIn = isLoggedIn;
    await pref.setBool('isUserLoggedIn', isLoggedIn);
    emit(UserLoggedInState(isLoggedIn: isLoggedIn));
  }

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
    response.fold(
        (errMessage) => emit(RegisterFailureState(errMessage: errMessage)),
        (regesterModel) =>
            emit(RegisterSuccessState(message: regesterModel.message)));
  }

  Future<void> sigInUser({
    required String email,
    required String password,
  }) async {
    emit(SignInLoadingState());
    final response = await authRepo.signInUser(
      email: email,
      password: password,
    );
    response.fold(
        (errMessage) => emit(SignInFailureState(errMessage: errMessage)),
        (signInModel) => emit(SignInSuccessState()));
  }

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

  Future<void> resetPasswordWithLink() async {}
}
