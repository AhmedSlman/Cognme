// ignore_for_file: must_be_immutable

import 'package:cognme/features/reminder/data/models/reminder_model.dart';
import 'package:cognme/features/reminder/presentation/cubit/reminder_cubit.dart';
import 'package:cognme/features/reminder/presentation/widgets/add_data_widget.dart';
import 'package:cognme/features/reminder/presentation/widgets/add_task_button.dart';
import 'package:cognme/features/reminder/presentation/widgets/add_task_text_form_field.dart';
import 'package:cognme/features/reminder/presentation/widgets/add_time_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTaskForm extends StatelessWidget {
  AddTaskForm({super.key});
  GlobalKey<FormState> addTaskFormKey = GlobalKey();
  TextEditingController? addTaskController = TextEditingController();
  TextEditingController? monthController = TextEditingController();
  TextEditingController? dayController = TextEditingController();
  TextEditingController? yearController = TextEditingController();
  TextEditingController? hoursController = TextEditingController();
  TextEditingController? minuteController = TextEditingController();
  String selectedPeriod = "AM";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReminderCubit(),
      child: Form(
        key: addTaskFormKey,
        child: Column(
          children: [
            AddTaskTextFormField(
              controller: addTaskController,
            ),
            const SizedBox(height: 20),
            AddDataWidget(
              dayController: dayController,
              monthController: monthController,
              yearController: yearController,
            ),
            const SizedBox(height: 20),
            AddTimeWidget(
              hourController: hoursController,
              minuteController: minuteController,
              selectedPeriod: selectedPeriod,
            ),
            const SizedBox(height: 40),
            AddTaskButton(
              onTap: () {
                String task = addTaskController!.text;
                String day = dayController!.text;
                String month = monthController!.text;
                String year = yearController!.text;
                String hour = hoursController!.text;
                String minute = minuteController!.text;
                String period = selectedPeriod;
                if (task.isNotEmpty &&
                    day.isNotEmpty &&
                    month.isNotEmpty &&
                    year.isNotEmpty &&
                    hour.isNotEmpty &&
                    minute.isNotEmpty &&
                    period.isNotEmpty) {
                  BlocProvider.of<ReminderCubit>(context).addTask(
                      task,
                      DateTime(
                        int.parse(year),
                        int.parse(month),
                        int.parse(day),
                        int.parse(hour),
                        int.parse(minute),
                      ),
                      (period == selectedPeriod) as Period);
                  addTaskController!.clear();
                  dayController!.clear();
                  monthController!.clear();
                  yearController!.clear();
                  hoursController!.clear();
                  minuteController!.clear();
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
