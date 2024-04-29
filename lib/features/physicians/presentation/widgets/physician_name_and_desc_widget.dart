// ignore_for_file: must_be_immutable

import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/core/common/widgets/btn.dart';
import 'package:cognme/features/physicians/presentation/cubit/physicians_cubit.dart';
import 'package:cognme/features/physicians/presentation/widgets/custom_rating-bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorNameAndDescWidget extends StatelessWidget {
  DoctorNameAndDescWidget({
    super.key,
    required this.name,
    required this.description,
    required this.address,
    required this.onTap,
  });

  final String name;
  final String description;
  final String address;
  void Function()? onTap;
  @override
  Widget build(
    BuildContext context,
  ) {
    return BlocBuilder<PhysiciansCubit, PhysiciansState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dr: $name",
              style: AppStyles.s16,
            ),
            Text(
              "Spec: $description",
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
                Text(
                  address,
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
                CustomSmallButtom(
                  onTap: onTap,
                  lable: 'preview',
                  backgroundColor: AppColors.mainColor,
                )
              ],
            ),
          ],
        );
      },
    );
  }
}
