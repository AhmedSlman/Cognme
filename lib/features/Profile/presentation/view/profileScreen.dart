import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: context.height * 0.4,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
              ),
            )
          ],
        ),
      ]),
    );
  }
}
