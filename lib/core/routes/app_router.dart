import 'package:cognme/features/auth/presentation/views/sign_up_view.dart';
import 'package:cognme/features/home/presetation/view/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/auth_cubit/auth_cubit.dart';
import '../../features/auth/presentation/views/sign_in_view.dart';
import '../../features/on_boarding/presentation/views/on_bording_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';
import '../services/service_locator.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/mm",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: "/onBoarding",
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: "/signUp",
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: const SignUpView(),
      ),
    ),
    GoRoute(
      path: "/signIn",
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: const SignInView(),
      ),
    ),
    GoRoute(
      path: "/",
      builder: (context, state) => const HomeView(),
    ),
  
  ],
);
