import 'package:cognme/core/functions/custom_navigate.dart';
import 'package:cognme/core/routes/router_names.dart';
import 'package:cognme/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

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
