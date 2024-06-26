import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_strings.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomCategory extends StatelessWidget {
  const WelcomCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: ListTile(
      leading: Image.asset(AppAssets.profle),
      title: Text(
        AppStrings.homewelcom,
        style: AppStyles.s16.copyWith(
          color: AppColors.blackOfText,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Text(
          AppStrings.name,
          style: AppStyles.s16.copyWith(
            color: AppColors.blackOfText,
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      trailing: const Icon(FontAwesomeIcons.bell),
    ));
  }
}

// 