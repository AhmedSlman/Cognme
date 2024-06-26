// ignore_for_file: prefer_const_constructors
import 'package:cognme/core/common/functions/custom_navigate.dart';
import 'package:cognme/core/routes/router_names.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/core/common/widgets/custom_app_bar.dart';
import 'package:cognme/features/emg_call/presentation/widgets/contacts_list_view.dart';
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
            SizedBox(height: 20),
            CustomAppBar(
              label: "Emergency Contact",
              appBarTrailing: IconButton(
                color: AppColors.mainColor,
                onPressed: () {
                  customReplacementNavigate(context, RouterNames.AddCaller);
                },
                icon: Icon(
                  Icons.add,
                  size: 35,
                ),
              ),
            ),
            Expanded(child: ContactsListView()),
          ],
        ),
      ),
    );
  }
}
