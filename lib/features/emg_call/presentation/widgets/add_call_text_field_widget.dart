// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AddCallTextFormFieldWidget extends StatelessWidget {
  AddCallTextFormFieldWidget({
    super.key,
    this.controller,
    required this.labelText,
    this.icon,
    this.textInputType,
  });
  TextEditingController? controller = TextEditingController();
  final String labelText;
  Widget? icon;
  TextInputType? textInputType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      controller: controller,
      decoration: InputDecoration(
        icon: icon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        labelText: labelText,
      ),
    );
  }
}
