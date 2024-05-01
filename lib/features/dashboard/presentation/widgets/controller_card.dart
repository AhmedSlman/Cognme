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
          color: const Color.fromARGB(255, 235, 232, 232),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.height * 0.006,
              ),
              Icon(
                category.iconData,
                size: 25,
              ),
              SizedBox(
                height: context.height * 0.006,
              ),
              Text(category.title,
                  style: AppStyles.s18.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500)),
              Text(
                category.subTitle,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: context.height * 0.006,
              )
            ],
          ),
        ),
      ),
    );
  }
}
