import 'package:cognme/core/routes/app_router.dart';
import 'package:flutter/material.dart';

import 'core/data/cache/cache.dart';
import 'core/services/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  checkStateChanges();
  runApp(const MyApp());
}

void checkStateChanges() {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
