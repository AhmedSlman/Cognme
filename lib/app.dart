import 'package:flutter/material.dart';

import 'core/routes/app_router.dart';

class Cognme extends StatelessWidget {
  const Cognme({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
