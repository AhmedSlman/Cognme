import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CategoryHeadLines extends StatelessWidget {
  const CategoryHeadLines({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Time",
            style: AppStyles.regularStyle18.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          Text(
            "Missions",
            style: AppStyles.regularStyle18.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
          Container(
            height: 30,
            width: 80,
            decoration: BoxDecoration(
                color: const Color(0xffE1E1E1),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "All",
                  style: AppStyles.regularStyle18.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                Image.asset(
                  AppAssets.arrow,
                  color: Colors.grey,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
