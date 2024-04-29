import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/home/presentation/widgets/routine_card.dart';
import 'package:flutter/material.dart';

class RoutineCategory extends StatelessWidget {
  const RoutineCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Tasks To Do",
            style: AppStyles.formLabel.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: context.height * 0.01,
        ),
        const RoutineCard(),
      ],
    );
  }
}
