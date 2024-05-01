// ignore_for_file: must_be_immutable

import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';

class AddTaskButton extends StatelessWidget {
  AddTaskButton({
    super.key,
    this.onTap,
  });
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: context.height * 0.055,
        width: context.width * 0.35,
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
            child: Text(
          'Add Task',
          style: AppStyles.s18.copyWith(color: AppColors.whiteOfColor),
        )),
      ),
    );
  }
}
