import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/home/presentation/widgets/routine_card.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class RoutineCategory extends StatelessWidget {
  const RoutineCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
            alignment: Alignment.centerLeft,
            child: Text(AppStrings.account, style: AppStyles.regularStyle18)),
        SizedBox(
          height: context.height * 0.01,
        ),
        const RoutineCard(),
      ],
    );
  }
}
