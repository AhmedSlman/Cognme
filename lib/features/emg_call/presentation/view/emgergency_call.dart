// ignore_for_file: prefer_const_constructors

import 'package:cognme/core/errors/app_styles.dart';
import 'package:cognme/core/functions/custom_navigate.dart';
import 'package:cognme/core/routes/routernames.dart';
import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/core/widgets/custom_app_bar.dart';
import 'package:cognme/features/emg_call/presentation/widgets/listTileEmergency.dart';
import 'package:flutter/material.dart';

class EmergencyCallPage extends StatelessWidget {
  const EmergencyCallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.02),
        child: Column(
          children: [
            CustomAppBar(
              label: "Emergency Contact",
              appBarTrailing: IconButton(
                color: AppColors.primaryColor,
                onPressed: () {
                  customNavigate(context,RouterNames.AddCaller);
                },
                icon: Icon(Icons.add,size: 35,),
              ),
            ),
            SizedBox(
              height: context.height * 0.04,
            ),
            listTileEmergencyCall(),
            SizedBox(
              height: context.height * 0.03,
            ),
            listTileEmergencyCall(),
            SizedBox(
              height: context.height * 0.03,
            ),
            listTileEmergencyCall(),
            SizedBox(
              height: context.height * 0.03,
            ),
            listTileEmergencyCall(),
            SizedBox(
              height: context.height * 0.03,
            ),
            listTileEmergencyCall(),
            SizedBox(
              height: context.height * 0.03,
            ),
            listTileEmergencyCall(),
            SizedBox(
              height: context.height * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
