import 'package:cognme/core/utils/media_query.dart';
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
      height: context.height * 0.09,
      width: context.width * 0.7,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 243, 241, 241),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              title: Text(
                title,
                softWrap: true,
                maxLines: 1,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: Text(
                supTitle,
                softWrap: true,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Image.asset(
            image,
            height: context.height * 0.07,
            // width: context.width * 0.07,
          ),
          SizedBox(width: context.width * 0.01),
        ],
      ),
    );
  }
}
