import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.1,
      decoration: BoxDecoration(
        color: AppColors.greyOfText,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), //color of shadow
            spreadRadius: 17, //spread radius
            blurRadius: 1, // blur radius
            offset: const Offset(0, 4), // changes position of shadow
          ),
          //you can set more BoxShadow() here
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(57),
          topRight: Radius.circular(57),
        ),
      ),
    );
  }
}
