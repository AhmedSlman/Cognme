import 'package:flutter/material.dart';

import '../../../../core/data/cache/cach.dart';
import '../../../../core/functions/custom_navigate.dart';
import '../../../../core/services/service_locator.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    bool isOnBoardingVisited =
        getIt<CacheHelper>().getData(key: "isOnBoardingVisited") ?? false;
    if (isOnBoardingVisited == true) {
      delayedNavigate(context, "/signUp");
    } else {
      delayedNavigate(context, "/onBoarding");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: AppStyles.s64,
        ),
      ),
    );
  }
}

void delayedNavigate(context, path) {
  Future.delayed(const Duration(seconds: 5), () {
    customReplacementNavigate(context, path);
  });
}
