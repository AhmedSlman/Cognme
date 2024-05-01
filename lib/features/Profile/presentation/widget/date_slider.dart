import 'package:calendar_slider/calendar_slider.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DateSlider extends StatelessWidget {
  const DateSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CalendarSlider(
      dateColor: Colors.grey,
      selectedDateColor: Colors.white,
      selectedTileBackgroundColor: AppColors.mainColor,
      monthYearButtonBackgroundColor: Colors.white,
      fullCalendarScroll: FullCalendarScroll.horizontal,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 140)),
      lastDate: DateTime.now().add(const Duration(days: 4)),
      onDateSelected: (date) {
        if (kDebugMode) {
          print(date);
        }
      },
    );
  }
}
