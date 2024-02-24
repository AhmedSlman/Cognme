import 'package:flutter/material.dart';

import 'app.dart';
import 'core/data/cache/cache.dart';
import 'core/services/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  checkStateChanges();
  runApp(const Cognme());
}

void checkStateChanges() {}
