import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TabContainer extends StatefulWidget {
  const TabContainer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TabContainerState createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  bool _isTab1Selected = false;
  bool _isTab2Selected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: context.height * 0.2,
        ),
        Center(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isTab1Selected = !_isTab1Selected;
                    _isTab2Selected = false; // Reset the other tab
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: _isTab1Selected ? Colors.blue : Colors.grey,
                  ),
                  width: context.width * 0.35,
                  height: context.height * 0.05,
                  alignment: Alignment.center,
                  child: const Text(
                    'Tab 1',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: context.width * 0.01,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isTab2Selected = !_isTab2Selected;
                    _isTab1Selected = false; // Reset the other tab
                  });
                },
                child: Container(
                  width: context.width * 0.35,
                  height: context.height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: _isTab1Selected ? Colors.blue : Colors.grey,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    'Tab 2',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
