import 'package:cognme/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

bool isSwitched = false;

class _SwitchButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      inactiveThumbColor: Colors.white,
      activeColor: Colors.white,
      activeTrackColor: AppColors.mainColor,
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
      },
    );
  }
}
