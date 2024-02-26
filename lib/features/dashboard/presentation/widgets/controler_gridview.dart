import 'package:flutter/material.dart';

import '../../data/dashboard_category_model.dart';
import 'contorler_card.dart';

class ControlerGridView extends StatelessWidget {
  const ControlerGridView({super.key});

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
          return ControlerCard(
            category: categories[index],
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
