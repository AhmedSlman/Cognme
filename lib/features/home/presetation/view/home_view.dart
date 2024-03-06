import 'package:cognme/core/utils/app_strings.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/home/presetation/widgets/checkbox_routine.dart';
import 'package:cognme/features/home/presetation/widgets/clothes_card.dart';
import 'package:cognme/features/home/presetation/widgets/heart_rate_category.dart';
import 'package:cognme/features/home/presetation/widgets/locattion&date.dart';
import 'package:cognme/features/home/presetation/widgets/weather_category.dart';
import 'package:cognme/features/home/presetation/widgets/home_appbar.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_styles.dart';
import '../widgets/routine_category.dart';

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
              height: context.height * 0.03,
            ),
            const WelcomCategory(),
            SizedBox(
              height: context.height * 0.01,
            ),
            const LocationDateCetegory(),
            SizedBox(
              height: context.height * 0.02,
            ),
            const WeatherCategory(),
            SizedBox(
              height: context.height * 0.03,
            ),
            const RoutineCategory(),
            SizedBox(
              height: context.height * 0.03,
            ),
            const Align(
                alignment: Alignment.centerLeft,
                child: Text(AppStrings.account, style: AppStyles.s24)),
            SizedBox(
              height: context.height * 0.01,
            ),
            const ClothesCategory(),
            SizedBox(
              height: context.height * 0.03,
            ),
            const HeartRateCategory(),
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
