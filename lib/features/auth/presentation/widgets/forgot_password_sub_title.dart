import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class ForgotPasswordSubTitle extends StatelessWidget {
  const ForgotPasswordSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: Text(
        'Enter your registered email below to receive password reset instructio',
        style: AppStyles.s12,
        textAlign: TextAlign.center,
      ),
    );
  }
}
