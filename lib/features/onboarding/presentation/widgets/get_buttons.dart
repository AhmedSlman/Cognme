import 'package:cognme/core/functions/custom_navigate.dart';
import 'package:cognme/core/functions/on_boarding.dart';
import 'package:cognme/core/routes/router_names.dart';
import 'package:cognme/core/utils/app_strings.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/core/widgets/custom_button.dart';
import 'package:cognme/features/onboarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';

class GetButtons extends StatelessWidget {
  const GetButtons(
      {super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomButton(
            text: AppStrings.createAccount,
            onPressed: () {
              onBoardingVisited();
              customReplacementNavigate(context, RouterNames.SignUpView);
            },
          ),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () {
              onBoardingVisited();
              customReplacementNavigate(context, RouterNames.SignInView);
            },
            child: Text(
              "Login Now",
              style: AppStyles.s16.copyWith(fontWeight: FontWeight.w400),
            ),
          )
        ],
      );
    } else {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: CustomButton(
            text: AppStrings.next,
            onPressed: () {
              controller.nextPage(
                duration: const Duration(microseconds: 200),
                curve: Curves.bounceIn,
              );
            },
          ),
        ),
      );
    }
  }
}
