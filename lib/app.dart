import 'package:cognme/core/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'core/routes/app_router.dart';

class Cognme extends StatelessWidget {
  const Cognme({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: appThemes(),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
