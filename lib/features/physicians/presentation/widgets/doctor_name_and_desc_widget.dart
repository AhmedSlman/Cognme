import 'package:cognme/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/btn.dart';
import 'custom_rating-bar.dart';

class DoctorNameAndDescWidget extends StatelessWidget {
  const DoctorNameAndDescWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppStrings.doctorName,
          style: AppStyles.s16,
        ),
        Text(
          AppStrings.doctorDisc,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.regularStyle18.copyWith(
            color: AppColors.greyOfText,
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.location_pin,
              color: AppColors.mainColor,
            ),
            const Text(
              AppStrings.doctorLocation,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomRatingBar(),
            const SizedBox(
              width: 40,
            ),
            CustomButtonDoctor(
              lable: 'preview',
              backgroundColor: AppColors.mainColor,
            )
          ],
        ),
      ],
    );
  }
}
