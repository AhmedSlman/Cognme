// ignore_for_file: file_names, avoid_unnecessary_containers
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_strings.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';

class LocationDateCetegory extends StatelessWidget {
  const LocationDateCetegory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.05,
      width: context.width * 0.5,
      decoration: ShapeDecoration(
        color: AppColors.mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              AppStrings.Mansoura,
              style: AppStyles.s16.copyWith(
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: context.width * 0.04,
            ),
            const Icon(
              Icons.location_on_outlined,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
