import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.buttonColor,
    required this.text,
    required this.onPressed,
  });

  final Color? buttonColor;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.07,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor ?? AppColors.mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: AppStyles.s18.copyWith(
              color: AppColors.whiteOfColor,
            ),
          ),
        ),
      ),
    );
  }
}
