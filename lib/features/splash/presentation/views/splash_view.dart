import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';

import '../../../../core/data/cache/cache.dart';
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
      delayedNavigate(context, "/onBoarding");
    } else {
      delayedNavigate(context, "/onBoarding");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: context.height * 0.2,
          width: context.width * 0.5,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.CognmeLogo),
              fit: BoxFit.fill,
            ),
          ),
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
