import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import 'doctor_name_and_desc_widget.dart';

class DoctorCardIfoWidget extends StatelessWidget {
  const DoctorCardIfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: Image.asset(
              AppAssets.Victor1,
              height: 40,
              width: 40,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        DoctorNameAndDescWidget()
      ],
    );
  }
}
