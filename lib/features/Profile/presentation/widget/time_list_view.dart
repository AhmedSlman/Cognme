import 'package:cognme/features/Profile/data/missions_model.dart';
import 'package:cognme/features/Profile/presentation/widget/times_list_widget.dart';
import 'package:flutter/material.dart';

class TimesListView extends StatelessWidget {
  const TimesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: times.length,
      itemBuilder: (context, index) {
        return TimesListTile(
          times: times[index],
        );
      },
    );
  }
}
