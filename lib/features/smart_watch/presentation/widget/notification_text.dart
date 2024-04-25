import 'package:flutter/material.dart';


class NotifyCategoryTxt extends StatelessWidget {
  const NotifyCategoryTxt({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:const TextStyle(
        color: Color(0xFF0F0F0F),
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}