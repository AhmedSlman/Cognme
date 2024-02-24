import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/app_colors.dart';

class CustomSmoothPageIndecator extends StatelessWidget {
  const CustomSmoothPageIndecator({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: ExpandingDotsEffect(
        activeDotColor: AppColors.deepBrown,
        dotHeight: 6,
        dotWidth: 10,
      ),
    );
  }
}
