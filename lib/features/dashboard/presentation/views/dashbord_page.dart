import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/features/dashboard/presentation/widgets/controller_grid_view.dart';
import 'package:cognme/features/dashboard/presentation/widgets/dashboard_image.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});
  static String id = 'DashboardPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        title: const Text(
          'Dashboard',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const DashboardImage(),
            const SizedBox(
              height: 25,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Control',
                style: AppStyles.s18.copyWith(
                    color: const Color(0xFF0F0F0F),
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const ControllerGridView(),
          ],
        ),
      ),
    );
  }
}
