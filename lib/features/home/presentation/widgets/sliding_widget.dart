import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SlidingWidget extends StatelessWidget {
  const SlidingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          height: 15,
          width: 60,
          decoration: BoxDecoration(color: AppColors.mainColor),
          child: Container(
            height: 20,
            width: 60,
            decoration: BoxDecoration(
              color: AppColors.whiteOfColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
        ),
        Container(
          height: 100,
          width: 60,
          decoration: const BoxDecoration(
            color: Color(0xffE0F1FC),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20), topLeft: Radius.circular(20)),
          ),
          child: Column(
            children: [
              Column(children: [
                Container(
                  height: 57,
                  width: 60,
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(18),
                        bottomLeft: Radius.circular(18),
                        topLeft: Radius.circular(20)),
                  ),
                  child: Center(
                    child: Image.asset(
                      AppAssets.Clouds,
                      height: 40,
                    ),
                  ),
                )
              ]),
              const SizedBox(
                height: 8,
              ),
              Text("20 °C",
                  style: AppStyles.formText16
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 18)),
            ],
          ),
        ),
        Container(
          height: 20,
          width: 60,
          decoration: const BoxDecoration(
            color: Color(0xffE0F1FC),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
            ),
          ),
          child: Container(
            height: 20,
            width: 60,
            decoration: BoxDecoration(
              color: AppColors.whiteOfColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
