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
        decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'add your task... ',
            contentPadding: EdgeInsets.all(30),
            suffix: Icon(
              Icons.add,
              color: Colors.black,
            )),
      ),
    );
  }
}
