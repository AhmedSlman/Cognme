// ignore_for_file: must_be_immutable

import 'package:cognme/features/reminder/presentation/widgets/add_task_form.dart';
import 'package:cognme/features/reminder/presentation/widgets/custom_appoint_app_bar.dart';
import 'package:cognme/features/reminder/presentation/widgets/tasks_list_view.dart';
import 'package:flutter/material.dart';

class AppointmentView extends StatelessWidget {
  const AppointmentView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            const CustomAppointmentAppBar(),
            const SizedBox(height: 20),
            AddTaskForm(),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Missions : ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            const Expanded(
              child: TasksListView(),
            ),
          ],
        ),
      ),
    );
  }
}
