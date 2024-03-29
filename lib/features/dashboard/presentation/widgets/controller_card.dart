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
          Navigator.pushNamed(context, "");
        } else if (category.title == '') {
          Navigator.pushNamed(context, "");
        } else if (category.title == '') {
          Navigator.pushNamed(context, '');
        } else if (category.title == ' ') {
          Navigator.pushNamed(context, "");
        } else if (category.title == '') {
          Navigator.pushNamed(context, "");
        }
      },
      child: Container(
        width: context.width * 0.3,
        height: context.height * 0.1,
        decoration: ShapeDecoration(
          color: AppColors.greyOfText,
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
              Text(category.title, style: AppStyles.s18),
              Text(
                category.subTitle,
                style: TextStyle(
                  color: AppColors.greyOfText,
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
