import 'package:cognme/core/functions/custom_navigate.dart';
import 'package:cognme/core/routes/router_names.dart';
import 'package:cognme/core/utils/app_strings.dart';
import 'package:cognme/features/auth/presentation/widgets/cover_image.dart';
import 'package:cognme/features/auth/presentation/widgets/custom_sign_in_form.dart';
import 'package:cognme/features/auth/presentation/widgets/have_an_account.dart';
import 'package:cognme/features/auth/presentation/widgets/welcom_text_widget.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: CognmeImageWidget(),
          ),
          SliverToBoxAdapter(
              child:
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04)),
          const SliverToBoxAdapter(
            child: WelcomeTextWidget(text: AppStrings.welcomeBack),
          ),
          SliverToBoxAdapter(
              child:
                  SizedBox(height: MediaQuery.of(context).size.height * 0.03)),
          const SliverToBoxAdapter(
            child: CustomSignInForm(),
          ),
          SliverToBoxAdapter(
              child:
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08)),
          SliverToBoxAdapter(
            child: HaveAnAccountWidget(
                text1: AppStrings.dontHaveAnAccount,
                text2: AppStrings.signUp,
                onTap: () {
                  customReplacementNavigate(context, RouterNames.SignUpView);
                }),
          ),
        ],
      ),
    );
  }
}
