import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class Headline extends StatelessWidget {
  const Headline({super.key, required this.headline});
  final String headline;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        headline,
        style: AppStyles.s18.copyWith(
          color: Colors.green,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
