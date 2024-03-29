import 'package:cognme/features/dashboard/data/dashboard_category_model.dart';
import 'package:flutter/material.dart';
import 'controller_card.dart';

class ControllerGridView extends StatelessWidget {
  const ControllerGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 1.7,
        ),
        itemBuilder: (BuildContext context, int index) {
          return ControllerCard(
            category: categories[index],
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
