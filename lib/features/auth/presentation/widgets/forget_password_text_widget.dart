import 'package:cognme/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class ForgetPassWordTextWidget extends StatelessWidget {
  const ForgetPassWordTextWidget({super.key, required this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: onPressed,
        child: const Text(AppStrings.forgotPassword),
      ),
    );
  }
}
