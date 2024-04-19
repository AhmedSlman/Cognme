import 'package:flutter/material.dart';

class TimePeriodWidget extends StatelessWidget {
  const TimePeriodWidget({super.key});

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
          onChanged: (value) {},
        ),
      ),
    );
  }
}
