// ignore_for_file: file_names
import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_strings.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/core/common/widgets/customTxtForm.dart';

class AddCallerWidget extends StatelessWidget {
  AddCallerWidget({
    super.key,
  });
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  // ignore: non_constant_identifier_names
  final TextEditingController _Phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.4,
      width: context.width * 0.9,
      decoration: BoxDecoration(
          color: AppColors.whiteOfColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: AppColors.whiteOfColor,
                blurRadius: 6,
                offset: const Offset(0, 5),
                spreadRadius: 3)
          ]),
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      AppStrings.nameContact,
                      style: AppStyles.regularStyle18,
                    ),
                  ),
                  const Spacer(),
                  Image.asset(AppAssets.Victor1),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTxtFormField(controller: _name, validate: () {}),
              const SizedBox(
                height: 10,
              ),
              const Text(
                AppStrings.phone,
                style: AppStyles.regularStyle18,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTxtFormField(controller: _Phone, validate: () {})
            ],
          ),
        ),
      ),
    );
  }
}
