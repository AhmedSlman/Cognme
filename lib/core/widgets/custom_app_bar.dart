import 'package:cognme/core/errors/app_styles.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.label, this.appBarIcon});
  final String label;
  final Widget? appBarIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20
    ),
      child: ListTile(
        leading: const Icon(Icons.arrow_back),
        title: Text(label,style: AppStyles.s24.copyWith(
          color: AppColors.black,
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }
}
