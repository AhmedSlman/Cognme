import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/features/Profile/data/missions_model.dart';
import 'package:flutter/material.dart';

class MissionCardWidget extends StatelessWidget {
  const MissionCardWidget({
    super.key,
    required this.missions,
  });
  final Missions missions;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 80,
        width: 200,
        decoration: BoxDecoration(
          color: missions.background,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text(
            missions.title,
            style: AppStyles.s16.copyWith(
                color: const Color(0xff656565),
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          subtitle: Text(
            missions.subTitle,
            style: AppStyles.s16.copyWith(
              color: const Color.fromARGB(255, 155, 152, 152),
            ),
          ),
          trailing: Image.asset(missions.image),
        ),
      ),
    );
  }
}
