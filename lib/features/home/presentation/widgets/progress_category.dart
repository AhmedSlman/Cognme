import 'package:cognme/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DayProgress extends StatelessWidget {
  const DayProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: AppColors.whiteOfColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.note_alt,
              color: Color(0xffD0D0D0),
              size: 40,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                '  Today progress',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              LinearPercentIndicator(
                width: 300,
                lineHeight: 10.0,
                percent: 0.5,
                barRadius: const Radius.circular(10),
                backgroundColor: const Color(0xffD0D0D0),
                progressColor: AppColors.mainColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
