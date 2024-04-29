import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';

class SignWithContainer extends StatelessWidget {
  final String iconImage;
  const SignWithContainer({
    super.key,
    required this.iconImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.all(7),
      height: context.height * 0.07,
      width: context.width * 0.15,
      decoration: BoxDecoration(
          color: AppColors.whiteOfColor,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: AppColors.greyColor, width: 2)),
      child: Image.asset(
        iconImage,
      ),
    );
  }
}
