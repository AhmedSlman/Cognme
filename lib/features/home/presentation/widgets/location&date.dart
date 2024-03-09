// ignore_for_file: file_names, avoid_unnecessary_containers
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_strings.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/utils/app_styles.dart';

class LocationDateCetegory extends StatelessWidget {
  const LocationDateCetegory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.05,
      decoration: ShapeDecoration(
        color: AppColors.blackOfText,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
              child: Row(
                children: [
                  const Icon(
                    FontAwesomeIcons.locationDot,
                    size: 20,
                  ),
                  Text(
                    AppStrings.Mansoura,
                    style: AppStyles.s16.copyWith(
                      color: AppColors.blackOfText,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 20,
            ),
            child: Container(
              child: Row(
                children: [
                  const Icon(
                    FontAwesomeIcons.calendarCheck,
                    size: 20,
                  ),
                  Text(
                    AppStrings.Monday,
                    style: AppStyles.regularStyle18.copyWith(
                      color: AppColors.blackOfText,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
