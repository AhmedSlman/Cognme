import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CheckBoxRoutine extends StatefulWidget {
  const CheckBoxRoutine({super.key});

  @override
  State<CheckBoxRoutine> createState() => _CheckBoxRoutineState();
}

class _CheckBoxRoutineState extends State<CheckBoxRoutine> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          activeColor: Colors.black,
          onChanged: (newBool) {
            setState(
              () {
                isChecked = newBool;
              },
            );
          },
        ),
        Text(
          'dummy text of the printing',
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
          style: AppStyles.s18.copyWith(
            color: AppColors.blackOfText,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
