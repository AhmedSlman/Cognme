import 'package:cognme/features/sensors/presentation/widget/sensor_category.dart';
import 'package:cognme/features/smart_watch/presentation/widget/smart_watch_button.dart';
import 'package:flutter/material.dart';

class SensorScreen extends StatelessWidget {
  const SensorScreen({super.key});
  static String id = 'SensorsPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        title: const Text(
          'Sensors',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
           SensorCategory(
              sensorCondition: 'Dangerous Condition',
              sensorName: 'Fire Alarm Sensor',
              sensorIcon: Icons.fireplace,
              conditionTxtColor: Color(0xFFFF0909),
              sensorIconColor: Color(0xFFFF0909),
            ),
            SizedBox(
              height: 20,
            ),
            SensorCategory(
              sensorCondition: 'Stable Condition ',
              sensorName: 'Gas Alarm Sensor',
              sensorIcon: Icons.fireplace,
              conditionTxtColor: Color(0xFF1EC71A),
              sensorIconColor: Color(0xFF1EC71A),
            ),
            SizedBox(
              height: 20,
            ),
            SmartWatchButton(
              text: 'Connect Another Sensor  ',
              icon: Icons.link,
            )
          ],
        ),
      ),
    );
  }
}
