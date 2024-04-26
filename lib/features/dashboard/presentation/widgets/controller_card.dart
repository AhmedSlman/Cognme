import 'package:cognme/core/common/functions/custom_navigate.dart';
import 'package:cognme/core/routes/router_names.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/dashboard/data/dashboard_category_model.dart';
import 'package:flutter/material.dart';

class ControllerCard extends StatelessWidget {
  const ControllerCard({super.key, required this.category});
  final Category category;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (category.title == 'Physician') {
          customNavigate(context, RouterNames.physicalView);
        } else if (category.title == 'Location') {
          customNavigate(context, RouterNames.locationView);
        } else if (category.title == 'Appointments') {
          customNavigate(context, RouterNames.appointmentView);
        } else if (category.title == 'Smart Watch') {
          customNavigate(context, RouterNames.smartWatchScreen);
        } else if (category.title == 'Sensors') {
          customNavigate(context, RouterNames.sensorScreen);
        }
      },
      child: Container(
        width: context.width * 0.3,
        height: context.height * 0.1,
        decoration: ShapeDecoration(
          color: AppColors.greyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 5,
              ),
              Icon(
                category.iconData,
                size: 30,
              ),
              Text(category.title,
                  style: AppStyles.s18.copyWith(color: Colors.black)),
              Text(
                category.subTitle,
                style: TextStyle(
                  color: AppColors.blackOfText,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
