import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/core/utils/media_query.dart';
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
        height: context.height * 0.1,
        // width: context.width * 0.1,
        decoration: BoxDecoration(
          color: missions.background,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text(
            missions.title,
            softWrap: true,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.s16.copyWith(
                color: const Color(0xff656565),
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          subtitle: Text(
            missions.subTitle,
            softWrap: true,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
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
