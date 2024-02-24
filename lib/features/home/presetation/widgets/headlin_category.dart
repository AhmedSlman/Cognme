import 'package:cognme/core/data/Api/app_styles.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  const Headline({super.key, required this.headline});
  final String headline;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        headline,
        style: AppStyles.s18.copyWith(
          color: AppColors.alertGreen,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
