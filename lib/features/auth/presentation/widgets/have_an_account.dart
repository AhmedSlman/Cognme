import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget(
      {super.key, required this.text1, required this.text2, this.onTap});
  final String text1;
  final String text2;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: AppStyles.s16,
          ),
          TextButton(
              onPressed: onTap,
              child: Text(
                text2,
                style: AppStyles.s18.copyWith(color: Colors.blueAccent),
              ))
        ],
      ),
    );
  }
}
