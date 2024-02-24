import 'package:cognme/core/data/Api/app_styles.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeartRateCategory extends StatelessWidget {
  const HeartRateCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: AppColors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 6,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text('Heart Rate',
                      style: AppStyles.s18.copyWith(color: AppColors.black)),
                ),
                Text('Yesterday was 75',
                    style:
                        AppStyles.s14.copyWith(color: AppColors.blackForText)),
              ],
            ),
            const Spacer(),
            const Icon(
              FontAwesomeIcons.heartCircleCheck,
              color: Colors.black,
              size: 30,
            ),
          ],
        ),
      ),
    );
  }
}
