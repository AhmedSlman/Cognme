import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/app_strings.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        children: [
          Text(
            AppStrings.backToHome,
            style: AppStyles.s14,
          )
        ],
      )),
    );
  }
}
