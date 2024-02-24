import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class WelcomeTextWidget extends StatelessWidget {
  const WelcomeTextWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        text,
        style: AppStyles.s28,
      ),
    );
  }
}
