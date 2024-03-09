import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ClothesCategory extends StatelessWidget {
  const ClothesCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: ShapeDecoration(
        color: AppColors.blackOfText,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cool Wears',
                    style: AppStyles.regularStyle18.copyWith(
                        color: AppColors.blackOfText, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text('more options', style: AppStyles.s18),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Container(
              height: 140,
              width: 230,
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
