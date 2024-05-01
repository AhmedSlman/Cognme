import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/features/Profile/presentation/widget/settings_button.dart';
import 'package:flutter/material.dart';

class BlueContainer extends StatelessWidget {
  const BlueContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 479,
      decoration: BoxDecoration(
        color: AppColors.mainColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: const Align(
        alignment: Alignment.topLeft,
        child: SettingButton(),
      ),
    );
  }
}
