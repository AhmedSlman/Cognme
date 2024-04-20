// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DataTimeTextField extends StatelessWidget {
  DataTimeTextField({
    super.key,
    required this.hintText,
    required this.keyboardType,
    required this.onChanged,
    this.controller,
  });
  final String hintText;
  final TextInputType keyboardType;
  final ValueChanged<String> onChanged;
  TextEditingController? controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: TextField(
            controller: controller,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            ),
            keyboardType: keyboardType,
            onChanged: onChanged),
      ),
    );
  }
}
