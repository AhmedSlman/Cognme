import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

abstract class AppStyles {
  static final s12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.deepGrey,
    fontFamily: "Poppins",
  );
  static final s14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.deepBrown,
    fontFamily: "Poppins",
  );
  static const s16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: Colors.black,
    fontFamily: "Poppins",
  );
  static final s18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.greyOfText,
    fontFamily: "Poppins",
  );
  static final s20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.deepBrown,
    fontFamily: "Poppins",
  );
  static const s24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontFamily: "Poppins",
  );

  static final s28 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
    fontFamily: "Poppins",
  );

  static const s42 = TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: "Pacifico",
  );
  static final s64 = TextStyle(
    fontSize: 64,
    fontWeight: FontWeight.w400,
    color: AppColors.deepBrown,
    fontFamily: "Pacifico",
  );
}
