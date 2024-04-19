class DataTimeModel {
  int year;
  int month;
  int day;
  int hour;
  int minute;
  bool isAM;
  DataTimeModel({
    this.year = 2023,
    this.month = 9,
    this.day = 4,
    this.hour = 0,
    this.minute = 0,
    this.isAM = false,
  });

  DateTime toDateTime() {
    return DateTime(year, month, day, hour, minute);
  }

  DataTimeModel copyWith({
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    bool? isAM,
  }) {
    return DataTimeModel(
      year: year ?? this.year,
      month: month ?? this.month,
      day: day ?? this.day,
      hour: hour ?? this.hour,
      minute: minute ?? this.minute,
      isAM: isAM ?? this.isAM,
    );
  }

  factory DataTimeModel.fromDataTime(DateTime dateTime) {
    return DataTimeModel(
      year: dateTime.year,
      month: dateTime.month,
      day: dateTime.day,
      hour: dateTime.hour,
      minute: dateTime.minute,
      isAM: dateTime.hour < 12,
    );
  }
}
