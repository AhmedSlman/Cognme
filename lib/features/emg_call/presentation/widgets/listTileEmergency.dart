// ignore_for_file: camel_case_types

import 'package:cognme/core/errors/app_styles.dart';
import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';

class listTileEmergencyCall extends StatelessWidget {
  const listTileEmergencyCall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.08,
      width: context.width * 0.9,
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: AppColors.deepGrey,
                blurRadius: 6,
                offset: const Offset(0, 5),
                spreadRadius: 3)
          ]),
      child: ListTile(
        leading: Image.asset(AppAssets.Victor1),
        title: const Text(
          "Ali",
          style: AppStyles.s24,
        ),
        subtitle: const Text("989210690"),
      ),
    );
  }
}
