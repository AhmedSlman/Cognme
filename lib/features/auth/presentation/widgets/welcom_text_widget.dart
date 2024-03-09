import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: AppStyles.boldStyle28,
      ),
    );
  }
}
