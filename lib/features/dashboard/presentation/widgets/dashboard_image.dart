import 'package:flutter/material.dart';

class DashboardImage extends StatelessWidget {
  const DashboardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
            image: AssetImage('assets/images/dashbord.png'), fit: BoxFit.fill),
      ),
    );
  }
}
