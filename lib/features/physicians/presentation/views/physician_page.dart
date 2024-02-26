// ignore_for_file: unused_import

import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_strings.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/doctor_cards_list_view.dart';
import '../widgets/doctor_category.dart';

class PhysicianView extends StatelessWidget {
  const PhysicianView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 80,
          title: const Text(
            AppStrings.physicians,
            style: AppStyles.s24,
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesomeIcons.penToSquare,
                color: AppColors.black,
                size: 25,
              ),
            )
          ],
        ),
        body: const DoctorCardsListView());
  }
}
