// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:cognme/features/reminder/data/models/appointmet_model.dart';
import 'package:cognme/features/reminder/data/models/reminder_model.dart';
import 'package:cognme/features/reminder/data/repo/appointment_repo.dart';
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

////////?????????????????????????????????????????????????????????????
////////?????????????????????????????????????????????????????????????

class AppointmentCubit extends Cubit<AppointmentState> {
  final AppointmentRepository appointmentRepository;

  AppointmentCubit({required this.appointmentRepository})
      : super(AppointmentState.initial());

  Future<void> getAppointments() async {
    emit(state.copyWith(isLoading: true));
    final result = await appointmentRepository.getAppointments();
    result.fold(
      (error) => emit(state.copyWith(error: error, isLoading: false)),
      (appointments) =>
          emit(state.copyWith(appointments: appointments, isLoading: false)),
    );
  }

  Future<void> createAppointment({
    required String appointmentDescription,
    required DateTime appointmentDate,
    required String userId,
  }) async {
    emit(state.copyWith(isLoading: true));
    final result = await appointmentRepository.createAppointment(
      appointmentDescription: appointmentDescription,
      appointmentDate: appointmentDate,
      userId: userId,
    );
    result.fold(
      (error) => emit(state.copyWith(error: error, isLoading: false)),
      (appointment) {
        final updatedAppointments =
            List<AppointmentModel>.from(state.appointments)..add(appointment);
        emit(state.copyWith(
            appointments: updatedAppointments, isLoading: false));
      },
    );
  }

  Future<void> deleteAppointment(String appointmentId) async {
    emit(state.copyWith(isLoading: true));
    final result = await appointmentRepository.deleteAppointment(appointmentId);
    result.fold(
      (error) => emit(state.copyWith(error: error, isLoading: false)),
      (_) {
        final updatedAppointments = state.appointments
            .where((appointment) => appointment.id != appointmentId)
            .toList();
        emit(state.copyWith(
            appointments: updatedAppointments, isLoading: false));
      },
    );
  }
}
