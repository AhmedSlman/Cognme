import 'package:cognme/core/common/models/data_time_model.dart';

class ReminderModel {
  final String task;
  final DateTime dateTime;

  ReminderModel({required this.task, required this.dateTime});

  // Convert ReminderModel to Map
  Map<String, dynamic> toJson() {
    return {
      'task': task,
      'dateTime': dateTime.toIso8601String(),
    };
  }

  // Create ReminderModel from Map
  factory ReminderModel.fromJson(Map<String, dynamic> json) {
    return ReminderModel(
      task: json['task'],
      dateTime: DateTime.parse(json['dateTime']),
    );
  }

  DataTimeModel toDataTimeModel() {
    return DataTimeModel.fromDataTime(dateTime);
  }
}
