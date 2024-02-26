import 'package:cognme/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class EmergencyCallPage extends StatelessWidget {

  const EmergencyCallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
     body:  CustomAppBar(label: "Emergency Call"),
    );
  }
}

