import 'package:cognme/core/functions/custom_navigate.dart';
import 'package:cognme/core/routes/routernames.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/core/widgets/btn.dart';
import 'package:cognme/core/widgets/custom_app_bar.dart';
import 'package:cognme/features/emg_call/presentation/widgets/addCallerWidget.dart';
import 'package:flutter/material.dart';

class AddCaller extends StatelessWidget {
  const AddCaller({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.02),
        child: Column(children: [
          CustomAppBar(
            label: "Add Caller",
            appBarLeading: IconButton(
              onPressed: () {
                customReplacementNavigate(
                    context, RouterNames.EmergencyCallPage);
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 35,
              ),
            ),
          ),
          SizedBox(
            height: context.height * 0.04,
          ),
          AddCallerWidget(),
          SizedBox(
            height: context.height * 0.02,
          ),
          CustomButtonDoctor(
            lable: "Add",
            width: context.width * 0.5,
            height: context.height * 0.05,
            backgroundColor: AppColors.primaryColor,
            isOutlined: false,
            textColor: AppColors.white,
          ),
        ]),
      ),
    );
  }
}
