import 'package:cognme/core/functions/custom_navigate.dart';
import 'package:cognme/core/routes/router_names.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_strings.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/auth/presentation/widgets/cover_image.dart';
import 'package:cognme/features/auth/presentation/widgets/custom_sign_up_form.dart';
import 'package:cognme/features/auth/presentation/widgets/have_an_account.dart';
import 'package:cognme/features/auth/presentation/widgets/welcom_text_widget.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: CognmeImageWidget()),
          SliverToBoxAdapter(
              child:
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04)),
          const SliverToBoxAdapter(
              child: WelcomeTextWidget(text: AppStrings.welcome)),
          SliverToBoxAdapter(
              child:
                  SizedBox(height: MediaQuery.of(context).size.height * 0.001)),
          const SliverToBoxAdapter(
            child: CustomSignUpForm(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
          ),
          SliverToBoxAdapter(
            child: HaveAnAccountWidget(
              text1: AppStrings.alreadyHaveAnAccount,
              text2: AppStrings.signIn,
              onTap: () {
                customNavigate(context, RouterNames.SignInView);
              },
            ),
          ),
        ],
      ),
    );
  }
}
