import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';

class DashboardImage extends StatelessWidget {
  const DashboardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: AssetImage(AppAssets.DashboardImage),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
