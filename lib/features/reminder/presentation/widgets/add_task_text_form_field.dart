// ignore_for_file: must_be_immutable

import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';

class AddTaskTextFormField extends StatelessWidget {
  AddTaskTextFormField({super.key, this.controller});
  TextEditingController? controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'add your task... ',
            contentPadding: EdgeInsets.all(context.toPadding * 0.7),
            suffix: const Icon(
              Icons.add,
              color: Colors.black,
            )),
      ),
    );
  }
}
