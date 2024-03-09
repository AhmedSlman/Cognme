import 'package:cognme/features/auth/presentation/widgets/cover_image.dart';
import 'package:flutter/material.dart';
import '../../../../core/functions/custom_navigate.dart';
import '../../../../core/utils/app_strings.dart';
import '../widgets/custom_sign_up_form.dart';
import '../widgets/have_an_account.dart';
import '../widgets/welcom_text_widget.dart';

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
              child:
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02)),
          SliverToBoxAdapter(
            child: HaveAnAccountWidget(
              text1: AppStrings.alreadyHaveAnAccount,
              text2: AppStrings.signIn,
              onTap: () {
                customNavigate(context, "/signIn");
              },
            ),
          ),
        ],
      ),
    );
  }
}
