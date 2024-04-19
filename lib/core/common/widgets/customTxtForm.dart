// ignore_for_file: file_names
import 'package:cognme/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CustomTxtFormField({
  required TextEditingController controller,
  required Function validate,
  TextInputType? type,
  bool isPassword = false,
  IconData? suffix,
  Function? suffixPressed,
}) =>
    TextFormField(
        obscureText: isPassword,
        keyboardType: type,
        validator: (String? s) {
          return validate(s);
        },
        controller: controller,
        style: const TextStyle(color: Colors.black),
        cursorColor: Colors.black,
        decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: () {
                suffixPressed!();
              },
              icon: Icon(suffix)),
          suffixIconColor: Colors.black,
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.red)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: AppColors.blackOfText)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: AppColors.blackOfText)),
        ));
