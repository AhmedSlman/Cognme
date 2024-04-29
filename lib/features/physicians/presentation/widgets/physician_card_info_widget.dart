// ignore_for_file: must_be_immutable

import 'package:cognme/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'physician_name_and_desc_widget.dart';

class DoctorCardIfoWidget extends StatelessWidget {
  DoctorCardIfoWidget(
      {super.key,
      required this.name,
      required this.description,
      required this.address,
      required this.onTap});
  final String name;
  final String description;
  final String address;
  void Function() onTap;

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
        DoctorNameAndDescWidget(
          name: name,
          description: description,
          address: address,
          onTap: onTap,
        )
      ],
    );
  }
}
