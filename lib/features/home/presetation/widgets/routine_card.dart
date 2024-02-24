import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';

class RoutineCard extends StatelessWidget {
  const RoutineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
            image: AssetImage(AppAssets.SeeImage), fit: BoxFit.fill),
      ),
      child: const Center(
        child: Text(
          textAlign: TextAlign.center,
          'simply dummy text of the printing and typesetting industry. Lorem Ipsum has',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
