import 'package:cognme/core/widgets/custom_button.dart';
import 'package:cognme/features/auth/presentation/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/functions/custom_navigate.dart';

class CustomSignUpForm extends StatelessWidget {
  CustomSignUpForm({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);

          return Form(
            key: authCubit.signUpFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextField(
                  labelText: AppStrings.fristName,
                  onChanged: (fristName) {
                    authCubit.firstName = fristName;
                  },
                ),
                CustomTextField(
                  labelText: AppStrings.lastName,
                  onChanged: (lastName) {
                    authCubit.lastName = lastName;
                  },
                ),
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
                const TermsAndConditionsWidget(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                state is SignUpLoadingState
                    ? const CircularProgressIndicator()
                    : CustomButton(
                        buttonColor:
                            authCubit.termsAndCondtionCheckBoxValue == false
                                ? AppColors.greyOfText
                                : null,
                        text: AppStrings.signUp,
                        onPressed: () async {
                          if (authCubit.termsAndCondtionCheckBoxValue == true) {
                            if (authCubit.signUpFormKey.currentState!
                                .validate()) {
                              await authCubit.signUpWithEmailAndPassword();
                            }
                          }
                        }),
              ],
            ),
          );
        });
  }
}
