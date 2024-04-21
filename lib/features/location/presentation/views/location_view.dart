import 'package:cognme/features/location/presentation/widgets/location_widget.dart';
import 'package:flutter/material.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            child: LocationWidget(),
          ),
        ],
      ),
    );
  }
}
