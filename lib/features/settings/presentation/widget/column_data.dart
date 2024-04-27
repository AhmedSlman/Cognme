import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/settings/presentation/widget/about_us_card.dart';
import 'package:cognme/features/settings/presentation/widget/list_tile_button.dart';
import 'package:cognme/features/settings/presentation/widget/list_tile_widget.dart';
import 'package:flutter/material.dart';

class ColumnData extends StatelessWidget {
  const ColumnData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: context.height * 0.05,
        ),
        const ListTileWidget(
          label: 'General',
          leadingIcon: Icon(Icons.adb_outlined),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
        SizedBox(
          height: context.height * 0.02,
        ),
        const ListTileWidget(
          label: 'Dark Mode',
          leadingIcon: Icon(Icons.dark_mode_sharp),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
        SizedBox(
          height: context.height * 0.02,
        ),
        const ListTileWidget(
          label: 'Security',
          leadingIcon: Icon(Icons.key),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
        SizedBox(
          height: context.height * 0.02,
        ),
        const ListTileWidget(
          label: 'Notification',
          leadingIcon: Icon(Icons.notification_add_sharp),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
        SizedBox(
          height: context.height * 0.02,
        ),
        const ListTileWidget(
          label: 'Sounds',
          leadingIcon: Icon(Icons.volume_mute_rounded),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
        SizedBox(
          height: context.height * 0.02,
        ),
        const ListTileWidget(
          label: 'Language',
          leadingIcon: Icon(Icons.language_outlined),
          trailingIcon: Icon(Icons.arrow_forward_ios),
        ),
        SizedBox(
          height: context.height * 0.05,
        ),
        Text(
          "About us",
          style: AppStyles.s18.copyWith(color: AppColors.greyOfText),
        ),
        SizedBox(
          height: context.height * 0.02,
        ),
        const AboutUsCard()
      ],
    );
  }
}
