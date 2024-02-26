import 'package:cognme/core/data/Api/app_styles.dart';
import 'package:cognme/core/errors/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
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
        } else if (category.title == 'Sensors') {
          Navigator.pushNamed(context, "");
        }
      },
      child: Container(
        width: 189,
        height: 121,
        decoration: ShapeDecoration(
          color: const Color(0xFFF7F7F8),
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
