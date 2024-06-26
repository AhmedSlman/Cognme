import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.label,
      this.appBarLeading,
      this.appBarTrailing});
  final String label;
  final Widget? appBarLeading;
  final Widget? appBarTrailing;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ListTile(
        leading: appBarLeading,
        title: Text(
          label,
          style: AppStyles.regularStyle18.copyWith(
            color: AppColors.blackOfText,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        trailing: appBarTrailing,
      ),
    );
  }
}
