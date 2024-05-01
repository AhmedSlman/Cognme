import 'package:cognme/core/utils/app_strings.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomAppointmentAppBar extends StatelessWidget {
  const CustomAppointmentAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
        ),
        Text(
          AppStrings.appointments,
          style: AppStyles.boldStyle28.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 20,
        )
      ],
    );
  }
}
