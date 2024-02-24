import 'package:cognme/features/home/presetation/view/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/on_boarding/presentation/views/on_bording_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: "/onBoarding",
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: '/homeView',
      builder: (context, state) => const HomeView(),
    ),
  ],
);
