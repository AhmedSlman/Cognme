// ignore_for_file: constant_identifier_names, duplicate_ignore
import 'package:cognme/core/common/logic/dateAndTimeCubit/data_time_cubit.dart';
import 'package:cognme/core/routes/router_names.dart';
import 'package:cognme/features/Profile/presentation/view/profileScreen.dart';
import 'package:cognme/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:cognme/features/auth/presentation/views/forgot_password_view.dart';
import 'package:cognme/features/auth/presentation/views/sign_in_view.dart';
import 'package:cognme/features/auth/presentation/views/sign_up_view.dart';
import 'package:cognme/features/dashboard/presentation/views/dashbord_page.dart';
import 'package:cognme/features/emg_call/presentation/view/addCall.dart';
import 'package:cognme/features/emg_call/presentation/view/emergency_call.dart';
import 'package:cognme/features/home/presentation/view/home_view.dart';
import 'package:cognme/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:cognme/features/physicians/presentation/views/physician_page.dart';
import 'package:cognme/features/reminder/presentation/cubit/reminder_cubit.dart';
import 'package:cognme/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/reminder/presentation/views/appointment_view.dart';

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
        create: (context) => AuthCubit(),
        child: const SignUpView(),
      ),
    ),
    GoRoute(
      path: RouterNames.SignInView,
      builder: (context, state) => BlocProvider(
        create: (context) => AuthCubit(),
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
    GoRoute(
      path: RouterNames.ProfileScreen,
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: RouterNames.forgotPasswordView,
      builder: (context, state) => const ForgotPasswordView(),
    ),
    GoRoute(
      path: RouterNames.appointmentView,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => DateTimeCubit(),
          ),
          BlocProvider(
            create: (context) => ReminderCubit(),
          ),
        ],
        child: const AppointmentView(),
      ),
    ),
  ],
);

// ignore: duplicate_ignore
