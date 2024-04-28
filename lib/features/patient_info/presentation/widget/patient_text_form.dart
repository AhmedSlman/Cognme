import 'dart:ffi';

import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class PatientTextForm extends StatelessWidget {
  final String lable;
   final IconData? suffix;
  final Function? suffixPressed;
  const PatientTextForm({super.key, required this.lable, this.suffixPressed, this.suffix, });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: AppColors.whiteOfColor,
        
        suffixIcon: IconButton(
              onPressed: () {
                suffixPressed!();
              },
              icon: Icon(suffix)),
          suffixIconColor: Colors.black,
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