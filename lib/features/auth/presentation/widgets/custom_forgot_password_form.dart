import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/widgets/custom_botton.dart';
import '../auth_cubit/auth_cubit.dart';
import 'custom_text_form_field.dart';
import 'forget_password_text_widget.dart';

class CustomForgotPasswordForm extends StatelessWidget {
  const CustomForgotPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {},
        builder: (context, state) {
          AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);

          return Form(
            key: authCubit.forgotPasswordFormKey,
            child: Column(
              children: [
                CustomTextField(
                  labelText: AppStrings.emailAddress,
                  onChanged: (emailAddress) {
                    authCubit.emailAddress = emailAddress;
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.12),
                state is ResetPasswordLoadingState
                    ? const CircularProgressIndicator()
                    : CustomBotton(
                        text: AppStrings.sendResetPasswordLink,
                        onPressed: () async {
                          if (authCubit.forgotPasswordFormKey.currentState!
                              .validate()) {
                            await authCubit.resetPasswordWithLink();
                          }
                        },
                      ),
              ],
            ),
          );
        });
  }
}
