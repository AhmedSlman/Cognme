// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:cognme/features/reminder/data/models/reminder_model.dart';
import 'package:cognme/features/reminder/presentation/cubit/reminder_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReminderCubit extends Cubit<ReminderState> {
  late SharedPreferences pref;

  ReminderCubit() : super(ReminderState([])) {
    _loadReminders();
  }

  void updateTask(int index, String task, DateTime dateTime, Period period) {
    final List<ReminderModel> updateReminders = List.from(state.reminders)
      ..removeAt(index)
      ..insert(
          index, ReminderModel(task: task, dateTime: dateTime, period: period));
    emit(ReminderState(updateReminders));
    saveReminders(updateReminders);
  }

  void addTask(String task, DateTime dateTime, Period period) {
    final List<ReminderModel> updateReminders = List.from(state.reminders)
      ..add(ReminderModel(task: task, dateTime: dateTime, period: period));
    emit(ReminderState(updateReminders));
    saveReminders(updateReminders);
  }

  Future<void> saveReminders(List<ReminderModel> reminders) async {
    List<String> jsonRemiders =
        reminders.map((reminder) => jsonEncode(reminder.toJson())).toList();
    await pref.setStringList("tasks", jsonRemiders);
  }

  Future<void> _loadReminders() async {
    pref = await SharedPreferences.getInstance();
    List<String>? jsonReminders = pref.getStringList("tasks");
    if (jsonReminders != null) {
      List<ReminderModel> reminders = jsonReminders
          .map((json) => ReminderModel.fromJson(jsonDecode(json)))
          .toList();
      emit(ReminderState(reminders));
    }
  }

  void deleteTask(int index) {
    final List<ReminderModel> updateReminders = List.from(state.reminders)
      ..removeAt(index);
    emit(ReminderState(updateReminders));
    saveReminders(updateReminders);
  }
}
