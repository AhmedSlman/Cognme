import 'package:flutter/material.dart';

class RoutineListTile extends StatelessWidget {
  const RoutineListTile({
    super.key,
    required this.title,
    required this.supTitle,
    required this.image,
  });
  final String title;
  final String supTitle;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 300,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 243, 241, 241),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              title: Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(supTitle),
            ),
          ),
          Image.asset(
            image,
            height: 70,
            width: 70,
          ),
          const SizedBox(width: 10)
        ],
      ),
    );
  }
}
