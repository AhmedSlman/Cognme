// ignore_for_file: prefer_const_constructors, non_constant_identifier_names
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/features/Profile/presentation/view/profileScreen.dart';
import 'package:cognme/features/dashboard/presentation/views/dashbord_page.dart';
import 'package:cognme/features/emg_call/presentation/cubit/eemergacy_calls_cubit.dart';
import 'package:cognme/features/emg_call/presentation/view/emergency_call.dart';
import 'package:cognme/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int pageIndex = 0;

class NavigationBarButton extends StatefulWidget {
  const NavigationBarButton({
    super.key,
  });

  @override
  State<NavigationBarButton> createState() => _NavigationBarButtonState();
}

class _NavigationBarButtonState extends State<NavigationBarButton> {
  // int pageIndex = 0;
  final pageOption = [
    HomeView(),
    DashboardView(),
    BlocProvider(
      create: (context) => EemergacyCallsCubit(),
      child: EmergencyCallPage(),
    ),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageOption[pageIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_customize),
              label: 'Dashbord',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: 'Calls',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            )
          ],
          backgroundColor: Colors.white,
          selectedItemColor: AppColors.mainColor,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 28,
          currentIndex: pageIndex,
          onTap: (int index) {
            setState(
              () {
                pageIndex = index;
              },
            );
          },
        ),
      ),
    );
  }
}
