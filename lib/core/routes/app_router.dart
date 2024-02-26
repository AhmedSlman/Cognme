// ignore_for_file: constant_identifier_names, duplicate_ignore
import 'package:cognme/core/routes/routernames.dart';
import 'package:cognme/features/auth/presentation/views/sign_up_view.dart';
import 'package:cognme/features/emg_call/presentation/view/emgergency_call.dart';
import 'package:cognme/features/home/presetation/view/home_view.dart';
import 'package:cognme/features/physicians/presentation/views/physician_page.dart';
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
      path: RouterNames.SplashView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: RouterNames.OnBoardingView,
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: RouterNames.SignUpView,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: const SignUpView(),
      ),
    ),
    GoRoute(
      path: RouterNames.SignInView,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<AuthCubit>(),
        child: const SignInView(),
      ),
    ),
    GoRoute(
      path: RouterNames.HomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: RouterNames.EmergencyCallPage,
      builder: (context, state) => const EmergencyCallPage(),
    ),
    GoRoute(
      path: RouterNames.DashBoardView,
      builder: (context, state) => const DashboardView(),
    ),
    GoRoute(
      path: RouterNames.PhysicalView,
      builder: (context, state) => const PhysicianView(),
    ),
    GoRoute(
      path: RouterNames.AddCaller,
      builder: (context, state) => const AddCaller(),
    ),
  ],
);

// ignore: duplicate_ignore
