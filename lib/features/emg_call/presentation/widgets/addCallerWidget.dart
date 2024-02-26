// ignore_for_file: non_constant_identifier_names

import 'package:cognme/core/errors/app_styles.dart';
import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/core/widgets/customTxtForm.dart';
import 'package:flutter/material.dart';

class AddCallerWidget extends StatelessWidget {
  AddCallerWidget({
    super.key,
  });
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _Phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.35,
      width: context.width * 0.9,
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: AppColors.deepGrey,
                blurRadius: 6,
                offset: const Offset(0, 5),
                spreadRadius: 3)
          ]),
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Stack(children: [
            Positioned(
              left: context.width * 0.7,
              bottom: context.height * 0.25,
              child: Image.asset(
                AppAssets.Victor1,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: context.height*0.05,),
                const Text(
                  "Name",
                  style: AppStyles.s24,
                ),
                SizedBox(
                  height: context.height * 0.01,
                ),
                CustomTxtFormField(
                  controller: _name,
                  validate: () {},
                ),
                SizedBox(
                  height: context.height * 0.02,
                ),
                const Text(
                  "Phone",
                  style: AppStyles.s24,
                ),
                SizedBox(
                  height: context.height * 0.01,
                ),
                CustomTxtFormField(controller: _Phone, validate: () {}),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
