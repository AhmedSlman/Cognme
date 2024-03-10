import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class AppStyles {
  static const s16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black,
    fontFamily: "Raleway",
  );
  static final s18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColors.greyOfText,
    fontFamily: "Raleway",
  );
  
  static const formText16 = TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontFamily: "Raleway",
  );

  static const regularStyle18 = TextStyle(
    fontSize: 18.25,
    color: Colors.black,
    fontFamily: "Raleway",
  );
  static const boldStyle28 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w500,
    color: Colors.black,
    fontFamily: "Raleway",
  );
}
