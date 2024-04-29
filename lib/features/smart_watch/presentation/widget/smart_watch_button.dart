import 'package:cognme/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SmartWatchButton extends StatelessWidget {
  const SmartWatchButton({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(
          horizontal: 19.61,
          vertical: 5.16,
        ),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: AppColors.mainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              icon,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
