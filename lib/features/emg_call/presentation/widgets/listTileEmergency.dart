// ignore_for_file: file_names
import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
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
          color: AppColors.whiteOfColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: AppColors.greyOfText,
                blurRadius: 6,
                offset: const Offset(0, 5),
                spreadRadius: 3)
          ]),
      child: ListTile(
        leading: Image.asset(AppAssets.Victor1),
        title: const Text(
          "Ali",
          style: AppStyles.regularStyle18,
        ),
        subtitle: const Text("989210690"),
      ),
    );
  }
}
