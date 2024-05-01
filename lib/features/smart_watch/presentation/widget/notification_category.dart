import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/smart_watch/presentation/widget/switch_button.dart';
import 'package:flutter/material.dart';

import 'notification_text.dart';

class NotificationCategory extends StatelessWidget {
  const NotificationCategory(
      {super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.08,
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // IconBox(
          //   icon: icon,
          // ),
          NotifyCategoryTxt(
            text: text,
          ),
          const SwitchButton(),
        ],
      ),
    );
  }
}
