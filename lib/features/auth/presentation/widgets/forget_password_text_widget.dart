import 'package:cognme/core/routes/routernames.dart';
import 'package:flutter/material.dart';
import '../../../../core/functions/custom_navigate.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class ForgetPassWordTextWidget extends StatelessWidget {
  const ForgetPassWordTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          customNavigate(context, RouterNames.forgotPasswordView);
        },
        child: const Text(AppStrings.forgotPassword),
      ),
    );
  }
}
