import 'package:cognme/features/Profile/data/missions_model.dart';
import 'package:cognme/features/Profile/presentation/widget/mission_card_widget.dart';
import 'package:flutter/material.dart';

class MissionsListView extends StatelessWidget {
  MissionsListView({super.key});
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: scrollController,
      thickness: 4,
      scrollbarOrientation: ScrollbarOrientation.left,
      thumbVisibility: true,
      trackVisibility: true,
      radius: const Radius.circular(10),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: ListView.builder(
          controller: scrollController,
          itemCount: missions.length,
          itemBuilder: (context, index) {
            return MissionCardWidget(
              missions: missions[index],
            );
          },
        ),
      ),
    );
  }
}
