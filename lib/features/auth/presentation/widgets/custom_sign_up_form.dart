import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_strings.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/core/widgets/container_screen.dart';
import 'package:cognme/core/widgets/custom_button.dart';
import 'package:cognme/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:cognme/features/auth/presentation/widgets/custom_text_form_field.dart';
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

          return Stack(
            children: [
              const ContainerScreen(),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.whiteOfColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Form(
                  key: authCubit.signUpFormKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
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
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        state is SignUpLoadingState
                            ? const CircularProgressIndicator()
                            : CustomButton(
                                buttonColor:
                                    authCubit.termsAndCondtionCheckBoxValue ==
                                            false
                                        ? AppColors.greyOfText
                                        : null,
                                text: AppStrings.signUp,
                                onPressed: () async {
                                  if (authCubit.termsAndCondtionCheckBoxValue ==
                                      true) {
                                    if (authCubit.signUpFormKey.currentState!
                                        .validate()) {
                                      await authCubit
                                          .signUpWithEmailAndPassword();
                                    }
                                  }
                                }),
                                SizedBox(height: context.height*0.02,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            SizedBox(width: context.width*0.05,),
                            const Icon(
                              Icons.facebook,
                              size: 40,
                              color: Colors.blue,
                            ),
                            SizedBox(width: context.width*0.05,),
                            const Icon(
                              Icons.facebook,
                              size: 40,
                              color: Colors.blue,
                            ),
                            SizedBox(width: context.width*0.05,),
                            const Icon(
                              Icons.facebook,
                              size: 40,
                            color: Colors.blue,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
