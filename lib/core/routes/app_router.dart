import 'package:cognme/features/home/presetation/view/home_view.dart';
import 'package:cognme/features/on_boarding/presentation/views/on_boarding.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: '/onBoardingView',
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: '/homeView',
      builder: (context, state) => const HomeView(),
    ),
  ],
);
