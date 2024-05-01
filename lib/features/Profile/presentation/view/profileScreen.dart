import 'package:cognme/features/Profile/data/missions_model.dart';
import 'package:cognme/features/Profile/presentation/widget/category_headlines.dart';
import 'package:cognme/features/Profile/presentation/widget/mission_card_widget.dart';
import 'package:cognme/features/Profile/presentation/widget/missions_list_view.dart';
import 'package:cognme/features/Profile/presentation/widget/time_list_view.dart';
import 'package:cognme/features/Profile/presentation/widget/top_part_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TopPartProfilePage(),
          const CategoryHeadLines(),
          Expanded(
            child: Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        child: TimesListView(),
                      )
                    ],
                  ),
                ),
                Expanded(flex: 3, child: MissionsListView()),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
