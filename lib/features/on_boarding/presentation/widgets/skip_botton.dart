import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(
            AppStrings.skip,
            style: AppStyles.s16.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.deepBrown,
            ),
          ),
        ),
      ),
    );
  }
}
