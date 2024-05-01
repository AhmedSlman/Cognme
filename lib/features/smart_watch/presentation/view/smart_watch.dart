import 'package:cognme/core/common/widgets/custom_button.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/features/smart_watch/presentation/widget/device_box.dart';
import 'package:cognme/features/smart_watch/presentation/widget/notification_category.dart';
import 'package:cognme/features/smart_watch/presentation/widget/smart_watch_button.dart';
import 'package:flutter/material.dart';

class SmartWatchScreen extends StatelessWidget {
  const SmartWatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteOfColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        title: const Text(
          'Smart watch control',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const ConnectDeviceBox(),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'Connect ',
              onPressed: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Manage Notifications',
              style: AppStyles.s18.copyWith(
                color: AppColors.blackOfText,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const NotificationCategory(
              icon: Icons.calendar_month,
              text: 'Medication Appointment',
            ),
            const SizedBox(
              height: 20,
            ),
            const NotificationCategory(
              icon: Icons.cloud,
              text: 'Weather Condition',
            ),
            const SizedBox(
              height: 20,
            ),
            const NotificationCategory(
              icon: Icons.monitor_heart,
              text: 'Heart Rate ',
            ),
            const SizedBox(
              height: 20,
            ),
            const NotificationCategory(
              icon: Icons.fire_hydrant_alt,
              text: 'Sensors Data ',
            ),
            const SizedBox(
              height: 40,
            ),
            const SmartWatchButton(
              text: 'Current Location    ',
              icon: Icons.location_on,
            )
          ],
        ),
      ),
    );
  }
}
