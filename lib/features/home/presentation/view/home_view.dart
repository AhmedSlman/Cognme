import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/home/presentation/widgets/checkbox_routine.dart';
import 'package:cognme/features/home/presentation/widgets/clothes_card.dart';
import 'package:cognme/features/home/presentation/widgets/heart_rate_category.dart';
import 'package:cognme/features/home/presentation/widgets/location&date.dart';
import 'package:cognme/features/home/presentation/widgets/routine_category.dart';
import 'package:cognme/features/home/presentation/widgets/sliding_widget.dart';
import 'package:cognme/features/home/presentation/widgets/progress_category.dart';
import 'package:cognme/features/home/presentation/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width * 0.03),
          child: Column(children: [
            SizedBox(
              height: context.height * 0.04,
            ),
            const WelcomCategory(),
            SizedBox(
              height: context.height * 0.01,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LocationDateCetegory(),
                Align(alignment: Alignment.centerRight, child: SlidingWidget()),
              ],
            ),
            SizedBox(
              height: context.height * 0.01,
            ),
            const DayProgress(),
            SizedBox(
              height: context.height * 0.03,
            ),
            const RoutineCategory(),
            SizedBox(height: context.height * 0.03),
            const HeartRateCategory(),
            SizedBox(height: context.height * 0.03),
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recommended Clothes :",
                  style:
                      AppStyles.formLabel.copyWith(fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: context.height * 0.01,
            ),
            const ClothesCategory(),
            SizedBox(
              height: context.height * 0.03,
            ),
            const CheckBoxRoutine(),
            SizedBox(
              height: context.height * 0.01,
            ),
            const CheckBoxRoutine(),
            const CheckBoxRoutine(),
            const CheckBoxRoutine(),
          ]),
        ),
      ),
    );
  }
}
