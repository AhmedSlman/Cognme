import 'package:flutter/material.dart';

class TimePeriodWidget extends StatelessWidget {
  TimePeriodWidget({
    super.key,
    required this.selectedPeriod,
  });

  final String selectedPeriod;

  DateTime selectedDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: DropdownButtonFormField(
          padding: const EdgeInsets.only(left: 10),
          alignment: AlignmentDirectional.centerEnd,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Am',
          ),
          items: ['AM', 'PM'].map((period) {
            return DropdownMenuItem(
              value: period,
              child: Text(period),
            );
          }).toList(),
          onChanged: (value) {
            value == selectedPeriod;
            // setState(() {
            //   selectedDateTime = value == 'AM'
            //       ? DateTime(
            //           selectedDateTime.year,
            //           selectedDateTime.month,
            //           selectedDateTime.day,
            //           selectedDateTime.hour % 12,
            //           selectedDateTime.minute,
            //         )
            //       : DateTime(
            //           selectedDateTime.year,
            //           selectedDateTime.month,
            //           selectedDateTime.day,
            //           selectedDateTime.hour % 12 + 12,
            //           selectedDateTime.minute,
            //         );
            // });
          },
        ),
      ),
    );
  }
}
