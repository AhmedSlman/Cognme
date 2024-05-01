import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/features/Profile/presentation/widget/blue_container.dart';
import 'package:cognme/features/Profile/presentation/widget/date_slider.dart';
import 'package:cognme/features/Profile/presentation/widget/taps.dart';
import 'package:flutter/material.dart';

class TopPartProfilePage extends StatelessWidget {
  const TopPartProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        const Column(
          children: [
            BlueContainer(),
            SizedBox(
              height: 50,
            ),
            DateSlider(),
          ],
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.15,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.16,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: AppColors.whiteOfColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    "Rose Gomese",
                    style: AppStyles.regularStyle18.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const TapsWidget()
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 80,
          left: 170,
          child: CircleAvatar(radius: 45, child: Image.asset(AppAssets.profle)),
        ),
        Positioned(
          top: 140,
          right: 158,
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.edit,
              size: 20,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
