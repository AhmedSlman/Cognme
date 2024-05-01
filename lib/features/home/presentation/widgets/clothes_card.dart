import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';

class ClothesCategory extends StatelessWidget {
  const ClothesCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.17,
      decoration: ShapeDecoration(
        color: const Color(0xffE0F1FC),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: context.width * 0.01,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cool Wears',
                style: AppStyles.regularStyle18.copyWith(
                    color: AppColors.blackOfText, fontWeight: FontWeight.w600),
              ),
              Text('more options', style: AppStyles.s18.copyWith(fontSize: 16)),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: context.toPadding * 0.3),
            child: Container(
              height: context.height * 0.15,
              width: context.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                    image: AssetImage('assets/images/clothes.png'),
                    fit: BoxFit.fill),
              ),
            ),
          )
        ],
      ),
    );
  }
}
