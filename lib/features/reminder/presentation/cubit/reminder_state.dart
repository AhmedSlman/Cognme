import 'package:cognme/features/reminder/data/models/appointmet_model.dart';
import 'package:cognme/features/reminder/data/models/reminder_model.dart';

class ReminderState {
  final List<ReminderModel> reminders;

  ReminderState(this.reminders);
}

class AppointmentState {
  final List<AppointmentModel> appointments;
  final bool isLoading;
  final String? error;

  const AppointmentState({
    required this.appointments,
    required this.isLoading,
    this.error,
  });

  factory AppointmentState.initial() {
    return const AppointmentState(
      appointments: [],
      isLoading: false,
      error: null,
    );
  }

  AppointmentState copyWith({
    List<AppointmentModel>? appointments,
    bool? isLoading,
    String? error,
  }) {
    return AppointmentState(
      appointments: appointments ?? this.appointments,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}
