import 'package:flutter/material.dart';

import '../../../../core/functions/custom_navigate.dart';
import '../../../../core/routes/routernames.dart';
import '../../../../core/utils/app_strings.dart';
import '../widgets/custom_sign_in_form.dart';
import '../widgets/have_an_account.dart';
import '../widgets/welcom_text_widget.dart';
import '../widgets/welcome_banner.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: WelcomeBanner(),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 32),
              child: WelcomeTextWidget(text: AppStrings.welcomeBack),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomSignInForm(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: HaveAnAccountWidget(
                text1: AppStrings.dontHaveAnAccount,
                text2: AppStrings.signUp,
                onTap: () =>
                    customReplacementNavigate(context, RouterNames.SignUpView),
              ),
            ),
          )
        ],
      ),
    );
  }
}
