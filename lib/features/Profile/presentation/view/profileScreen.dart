// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names
import 'package:cognme/features/Profile/presentation/widget/taps.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/Profile/presentation/widget/blue_container.dart';

class ProfileScreen extends StatelessWidget {
  final bool isChecked = false;
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            const BlueContainer(),
            Column(
              children: [
                SizedBox(
                  height: context.height * 0.12,
                ),
                Center(
                  child: Container(
                    height: context.height * 0.15,
                    width: context.width * 0.8,
                    decoration: BoxDecoration(
                      color: AppColors.whiteOfColor,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1), //color of shadow
                          spreadRadius: 15, //spread radius
                          blurRadius: 15, // blur radius
                          offset:
                              const Offset(1, 1), // changes position of shadow
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 60,
              left: 170,
              child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.blue, // Change the background color
                  child: Image.asset(AppAssets.Victor1)),
            ),
            Positioned(
              bottom: 75,
              right: 155,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.edit,
                  size: 25,
                  color: Colors.blue,
                ),
              ),
            ),
            const TabContainer()
            // Column(
            //   children: [
            //     SizedBox(
            //       height: context.height * 0.2,
            //     ),
            //     Center(
            //       child: Container(
            //         padding: const EdgeInsets.all(10),
            //         width: context.width * 0.7,
            //         height: context.height * 0.05,
            //         decoration: BoxDecoration(
            //             color: AppColors.greyColor,
            //             borderRadius: BorderRadius.circular(20)),
            //         child: Row(
            //           children: [
            //             GestureDetector(
            //               onTap: () {},
            //               child: Container(
            //                 color: isChecked
            //                     ? AppColors.greyColor
            //                     : AppColors.whiteOfColor,
            //               ),
            //             ),
            //             GestureDetector(
            //               onTap: () {},
            //               child: Container(
            //                 color: isChecked
            //                     ? AppColors.whiteOfColor
            //                     : AppColors.greyColor,
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ]),
    );
  }
}
