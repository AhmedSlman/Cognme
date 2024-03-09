// ignore_for_file: avoid_print
import 'dart:convert';
import 'package:cognme/features/auth/presentation/widgets/terms_and_conditions.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_button.dart';
import '../auth_cubit/auth_cubit.dart';
import 'custom_text_form_field.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        //  (context, state) {
        //   if (state is SignUpSuccessState) {
        //     showToast("Account Created Successfully");
        //     customReplacementNavigate(context, "/signIn");
        //   } else if (state is SignUpFailureState) {
        //     showToast(state.errMessage);
        //   }
        // },
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
                            authCubit.termsAndConditionCheckBoxValue == false
                                ? AppColors.greyOfText
                                : null,
                        text: AppStrings.signUp,
                        onPressed: () async {
                          var headers = {
                            'Accept': 'application/vnd.api+json',
                            'Content-Type': 'application/vnd.api+json',
                            'Authorization':
                                'Bearer 7|pyCVqTc9IF1amr5wbN1W777DEUjieu7jfTfAMW6n81c279b7'
                          };
                          var dio = Dio();
                          var response = await dio.request(
                            'https://2484-156-197-191-31.ngrok-free.app/api/appointment',
                            options: Options(
                              method: 'GET',
                              headers: headers,
                            ),
                          );
                          if (response.statusCode == 200) {
                            print(json.encode(response.data));
                          } else {
                            print(response.statusMessage);
                          }
                          // if (authCubit.termsAndConditionCheckBoxValue == true) {
                          //   if (authCubit.signUpFormKey.currentState!
                          //       .validate()) {
                          //     authCubit.signUpWithEmailAndPassword();
                          //     customReplacementNavigate(context, "/signIn");
                          //   }
                          // }
                        }),
              ],
            ),
          );
        });
  }
}
