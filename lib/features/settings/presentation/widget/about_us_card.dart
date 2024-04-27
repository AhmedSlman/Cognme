import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/features/settings/presentation/widget/list_tile_widget.dart';
import 'package:flutter/material.dart';

class AboutUsCard extends StatelessWidget {
  const AboutUsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteOfColor,
      child: const Column(
        children: [
          ListTileWidget(
            label: 'Rate Cognme',
            leadingIcon: Icon(Icons.star_rate),
            trailingIcon: Icon(Icons.arrow_forward_ios),
          ),
          ListTileWidget(
            label: 'Share With Friends',
            leadingIcon: Icon(Icons.share),
            trailingIcon: Icon(Icons.arrow_forward_ios),
          ),
          ListTileWidget(
            label: 'About Us',
            leadingIcon: Icon(Icons.warning_amber_outlined),
            trailingIcon: Icon(Icons.arrow_forward_ios),
          ),
          ListTileWidget(
            label: 'Support',
            leadingIcon: Icon(Icons.contact_support_rounded),
            trailingIcon: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
