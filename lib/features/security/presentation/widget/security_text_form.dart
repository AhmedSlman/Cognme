import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SecurityTextForm extends StatelessWidget {
  final String lable;
  const SecurityTextForm({
    super.key,
    required this.lable,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        
        label: Text(
          lable,
          style: AppStyles.s18.copyWith(
            color: AppColors.blackOfText,
          ),
        ),
        errorBorder:
            const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.mainColor,)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.greyColor)),
      ),
    );
  }
}
