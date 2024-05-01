import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/features/Profile/data/missions_model.dart';
import 'package:flutter/material.dart';

class TimesListTile extends StatelessWidget {
  const TimesListTile({super.key, required this.times});
  final Times times;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            times.time,
            style: AppStyles.s16.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(times.period),
        ],
      ),
    );
  }
}
