import 'package:cognme/features/reminder/presentation/cubit/reminder_cubit.dart';
import 'package:flutter/material.dart';

void showDeleteConfirmationDialog(
    BuildContext context, ReminderCubit reminderCubit, int index) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Delete'),
      content: const Text('Are you sure you want to delete?'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
            reminderCubit.deleteTask(index);
          },
          child: const Text('Yes'),
        ),
      ],
    ),
  );
}
