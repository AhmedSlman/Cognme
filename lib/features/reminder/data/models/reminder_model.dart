// ignore_for_file: constant_identifier_names

import 'package:cognme/core/common/models/data_time_model.dart';

enum Period {
  AM,
  PM,
}

class ReminderModel {
  final String task;
  final DateTime dateTime;
  final Period period;

  ReminderModel({
    required this.task,
    required this.dateTime,
    required this.period,
  });

  // Convert ReminderModel to Map
  Map<String, dynamic> toJson() {
    return {
      'task': task,
      'dateTime': dateTime.toIso8601String(),
      'period': period.toString().split('.').last,
    };
  }

  // Create ReminderModel from Map
  factory ReminderModel.fromJson(Map<String, dynamic> json) {
    return ReminderModel(
      task: json['task'],
      dateTime: DateTime.parse(json['dateTime']),
      period: json['period'] == 'AM' ? Period.AM : Period.PM,
    );
  }

  DataTimeModel toDataTimeModel() {
    return DataTimeModel.fromDataTime(dateTime);
  }
}
