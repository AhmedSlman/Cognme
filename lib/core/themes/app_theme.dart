import 'package:cognme/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

ThemeData appThemes() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xffFBFBFB),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: AppColors.whiteOfColor,
      elevation: 0,
    ),
  );
}
