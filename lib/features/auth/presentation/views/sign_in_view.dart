import 'package:cognme/features/auth/presentation/widgets/cover_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/custom_navigate.dart';
import '../../../../core/routes/routernames.dart';
import '../../../../core/utils/app_strings.dart';
import '../widgets/custom_sign_in_form.dart';
import '../widgets/have_an_account.dart';
import '../widgets/welcom_text_widget.dart';

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
              onTap: () =>
                  customReplacementNavigate(context, RouterNames.SignUpView),
            ),
          ),
        ],
      ),
    );
  }
}
