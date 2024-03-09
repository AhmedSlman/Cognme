import 'package:cognme/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CognmeImageWidget extends StatelessWidget {
  const CognmeImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height * 0.3,
      child: Image.asset(AppAssets.coverImage),
    );
  }
}