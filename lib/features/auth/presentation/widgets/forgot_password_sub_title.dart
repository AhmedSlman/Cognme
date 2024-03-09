import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ForgotPasswordSubTitle extends StatelessWidget {
  const ForgotPasswordSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 34),
      child: Text(
        'Enter your registered email below to receive password reset instruction',
        style: AppStyles.formText16,
        textAlign: TextAlign.center,
      ),
    );
  }
}
