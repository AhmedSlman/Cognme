// ignore_for_file: file_names
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingBar extends StatelessWidget {
  const CustomRatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: context.height * 0.03,
      unratedColor: Colors.grey,
      glowColor: AppColors.ratingColor,
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: AppColors.ratingColor,
      ),
      onRatingUpdate: (rating) {},
    );
  }
}
