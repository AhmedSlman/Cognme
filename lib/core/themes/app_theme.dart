import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

ThemeData appThemes() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.whiteOfColor,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: AppColors.whiteOfColor,
      elevation: 0,
    ),
  );
}
