import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/home/presentation/widgets/dashed_line_widget.dart';
import 'package:cognme/features/home/presentation/widgets/routin_list_tile.dart';
import 'package:flutter/material.dart';

class RoutineCard extends StatelessWidget {
  const RoutineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.24,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          Column(
            children: [
              const SizedBox(height: 20),
              Image.asset(AppAssets.sunIcon),
              const SizedBox(height: 15),
              const DashedLine(),
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            children: [
              SizedBox(height: context.height * 0.02),
              const RoutineListTile(
                title: "Time to take medicine",
                supTitle: 'Amphetamine,2 capsule Ginkgo Biloba, 1 capsule',
                image: AppAssets.medicine,
              ),
              SizedBox(height: context.height * 0.02),
              const RoutineListTile(
                  title: "Time to meditation ",
                  supTitle: "Find a quiet space, sit comfortably,focus on...",
                  image: AppAssets.medetation),
              SizedBox(height: context.height * 0.01),
            ],
          )
        ],
      ),
    );
  }
}
