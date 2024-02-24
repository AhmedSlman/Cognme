import 'package:cognme/core/data/Api/app_styles.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
          onPressed: () {
            GoRouter.of(context).go('/');
          },
          child: Text(
            '',
            style: AppStyles.s12.copyWith(color: AppColors.black),
          )),
    );
  }
}
