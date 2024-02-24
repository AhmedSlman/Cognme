import 'package:cognme/core/data/Api/app_styles.dart';
import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomCategory extends StatelessWidget {
  const WelcomCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: ListTile(
      leading: Image.asset(AppAssets.Victor1),
      title: Text(
        AppStrings.homewelcom,
        style: AppStyles.s16.copyWith(
          color: AppColors.black,
          fontSize: 18,
          fontWeight: FontWeight.w300,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          AppStrings.name,
          style: AppStyles.s16.copyWith(
            color: AppColors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      trailing: const Icon(FontAwesomeIcons.bell),
    ));
  }
}

// 