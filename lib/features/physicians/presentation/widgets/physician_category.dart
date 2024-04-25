import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';
import 'physician_card_info_widget.dart';

class DoctorCategory extends StatelessWidget {
  DoctorCategory({
    super.key,
    required this.name,
    required this.description,
    required this.address,
    required this.onTap,
  });
  final String name;
  final String description;
  final String address;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10, top: 15),
      child: Container(
        height: context.height * 0.2,
        width: context.width * 0.5,
        decoration: BoxDecoration(
          color: AppColors.whiteOfColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 2,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: DoctorCardIfoWidget(
          name: name,
          description: description,
          address: address,
          onTap: onTap,
        ),
      ),
    );
  }
}
