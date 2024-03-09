import 'package:cognme/core/utils/app_strings.dart';
import 'package:cognme/features/auth/presentation/widgets/custom_forgot_password_form.dart';
import 'package:cognme/features/auth/presentation/widgets/forgot_password_image.dart';
import 'package:cognme/features/auth/presentation/widgets/forgot_password_sub_title.dart';
import 'package:cognme/features/auth/presentation/widgets/welcom_text_widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 108.0),
              child: WelcomeTextWidget(text: AppStrings.forgotPassword),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: ForgotPasswordImage(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: ForgotPasswordSubTitle(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: CustomForgotPasswordForm(),
            ),
          )
        ],
      ),
    );
  }
}
