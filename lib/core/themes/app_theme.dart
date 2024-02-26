import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

ThemeData appThemes() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: AppColors.white,
      elevation: 0,
    ),
  );
}
