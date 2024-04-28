// ignore_for_file: must_be_immutable, use_build_context_synchronously
import 'package:cognme/core/common/functions/custom_navigate.dart';
import 'package:cognme/core/routes/router_names.dart';
import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_strings.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/core/common/widgets/container_screen.dart';
import 'package:cognme/core/common/widgets/custom_button.dart';
import 'package:cognme/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:cognme/features/auth/presentation/widgets/Sign_with_container.dart';
import 'package:cognme/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:cognme/features/auth/presentation/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignUpForm extends StatelessWidget {
  CustomSignUpForm({super.key});

  TextEditingController registerNameContorller = TextEditingController();
  TextEditingController registerEmailController = TextEditingController();

  TextEditingController registerPasswordController = TextEditingController();

  TextEditingController registerConfirmPasswordController =
      TextEditingController();

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
                          controller: registerNameContorller,
                          labelText: AppStrings.name,
                          
                          onChanged: (name) {
                            authCubit.name = name;
                          },
                        ),
                        CustomTextField(
                          controller: registerEmailController,
                          labelText: AppStrings.emailAddress,
                          onChanged: (emailAddress) {
                            authCubit.emailAddress = emailAddress;
                          },
                        ),
                        CustomTextField(
                          controller: registerPasswordController,
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
                        CustomTextField(
                          controller: registerConfirmPasswordController,
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
                          labelText: AppStrings.confirmPassword,
                          obscureText: authCubit.obscurePasswordTextValue,
                          onChanged: (password) {
                            authCubit.password = password;
                          },
                        ),
                        const TermsAndConditionsWidget(),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02),
                        state is RegisterLoadingState
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
                                      // await authCubit.registerUser(
                                      //   name: registerNameContorller.text,
                                      //   email: registerEmailController.text,
                                      //   password:
                                      //       registerPasswordController.text,
                                      //   confirmPassword:
                                      //       registerConfirmPasswordController
                                      //           .text,
                                      // );
                                      customReplacementNavigate(context,
                                          RouterNames.navigatiomBarButton);
                                    }
                                  }
                                }),
                        SizedBox(
                          height: context.height * 0.03,
                        ),
                        // ignore: prefer_const_constructors
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            SignWithContainer(
                              iconImage: AppAssets.gmailIcon,
                            ),
                            SignWithContainer(
                              iconImage: AppAssets.facebookIcon,
                            ),
                            SignWithContainer(
                              iconImage: AppAssets.appleIcon,
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
