// ignore_for_file: library_private_types_in_public_api

import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';

class TapsWidget extends StatefulWidget {
  const TapsWidget({Key? key}) : super(key: key);

  @override
  _TapsWidgetState createState() => _TapsWidgetState();
}

class _TapsWidgetState extends State<TapsWidget> {
  bool _isFirstButtonPressed = false;
  bool _isSecondButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: context.width * 0.7,
      decoration: BoxDecoration(
        color: const Color(0xffE4E4E4),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isFirstButtonPressed = !_isFirstButtonPressed;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:
                    _isFirstButtonPressed ? Colors.white : Colors.transparent,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Personal Info',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          const SizedBox(width: 25),
          GestureDetector(
            onTap: () {
              setState(() {
                _isSecondButtonPressed = !_isSecondButtonPressed;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:
                    _isSecondButtonPressed ? Colors.white : Colors.transparent,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.qr_code_2),
                    Text(
                      ' QR Code',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
