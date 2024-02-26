import 'package:cognme/core/data/Api/app_styles.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../data/dashboard_category_model.dart';

class ControlerCard extends StatelessWidget {
  const ControlerCard({super.key, required this.category});
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
          color: AppColors.deepGrey,
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
                  color: AppColors.deepGrey,
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
