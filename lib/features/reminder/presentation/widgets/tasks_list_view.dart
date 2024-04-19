import 'package:cognme/core/common/functions/show_delete_dialog.dart';
import 'package:cognme/features/reminder/presentation/cubit/reminder_cubit.dart';
import 'package:cognme/features/reminder/presentation/cubit/reminder_state.dart';
import 'package:cognme/features/reminder/presentation/widgets/checked_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReminderCubit, ReminderState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.reminders.length,
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: const EdgeInsets.all(10),
              title: Text(
                state.reminders[index].task,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(state.reminders[index].dateTime.toString()),
              trailing: const CheckBoxWidget(),
              onLongPress: () {
                showDeleteConfirmationDialog(
                    context, context.read<ReminderCubit>(), index);
              },
            );
          },
        );
      },
    );
  }
}
