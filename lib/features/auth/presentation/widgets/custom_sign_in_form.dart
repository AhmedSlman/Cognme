// ignore_for_file: use_build_context_synchronously

import 'package:cognme/core/functions/custom_navigate.dart';
import 'package:cognme/core/routes/router_names.dart';
import 'package:cognme/core/utils/app_strings.dart';
import 'package:cognme/core/widgets/custom_button.dart';
import 'package:cognme/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'custom_text_form_field.dart';
import 'forget_password_text_widget.dart';

// ignore: must_be_immutable
class CustomSignInForm extends StatelessWidget {
  CustomSignInForm({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);

          return Form(
            key: authCubit.signInFormKey,
            child: Column(
              children: [
                CustomTextField(
                  labelText: AppStrings.emailAddress,
                  onChanged: (emailAddress) {
                    authCubit.emailAddress = emailAddress;
                  },
                ),
                CustomTextField(
                  suffixIcon: IconButton(
                    onPressed: () {
                      authCubit.obscurePasswordText();
                    },
                    icon: Icon(
                      authCubit.obscurePasswordTextValue == true
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                  ),
                  labelText: AppStrings.password,
                  obscureText: authCubit.obscurePasswordTextValue,
                  onChanged: (password) {
                    authCubit.password = password;
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: ForgetPassWordTextWidget(
                    onPressed:
                        customNavigate(context, RouterNames.forgotPasswordView),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                state is SignInLoadingState
                    ? const CircularProgressIndicator()
                    : CustomButton(
                        text: AppStrings.signIn,
                        onPressed: () async {
                          if (authCubit.signInFormKey.currentState!
                              .validate()) {
                            await authCubit.sigInUser(
                              email: emailController.text,
                              password: passwordController.text,
                            );
                            customReplacementNavigate(
                              context,
                              RouterNames.HomeView,
                            );
                          }
                        },
                      ),
              ],
            ),
          );
        });
  }
}
