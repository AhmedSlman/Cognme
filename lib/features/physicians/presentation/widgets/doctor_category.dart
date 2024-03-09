import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import 'doctor_card_info_widget.dart';

class DoctorCategory extends StatelessWidget {
  const DoctorCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10, top: 15),
      child: Container(
        height: context.height * 0.2,
        width: context.width * 0.5,
        decoration: BoxDecoration(
          color: AppColors.whiteOfColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 2,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: const DoctorCardIfoWidget(),
      ),
    );
  }
}
