import 'package:cognme/core/utils/media_query.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';

class CustomClothesImage extends StatelessWidget {
  const CustomClothesImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.15,
      width: context.width * 0.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
            image: AssetImage(AppAssets.ClothesImage), fit: BoxFit.fill),
      ),
    );
  }
}
