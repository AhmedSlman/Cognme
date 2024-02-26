import 'package:flutter/material.dart';

import 'doctor_category.dart';

class DoctorCardsListView extends StatelessWidget {
  const DoctorCardsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const DoctorCategory();
        },
        itemCount: 10,
      ),
    );
  }
}
