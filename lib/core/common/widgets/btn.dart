import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomSmallButtom extends StatelessWidget {
  const CustomSmallButtom({
    super.key,
    required this.lable,
    this.height,
    this.width,
    this.onTap,
    this.isOutlined,
    this.backgroundColor,
    this.textColor,
  });
  final String lable;
  final double? height;
  final double? width;
  final VoidCallback? onTap;
  final bool? isOutlined;
  final Color? backgroundColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: const StadiumBorder(),
          side: isOutlined == true
              ? BorderSide(
                  width: 2,
                  color: AppColors.mainColor,
                )
              : BorderSide.none,
        ),
        child: Text(lable,
            style: AppStyles.s16
                .copyWith(color: AppColors.whiteOfColor, fontSize: 12)),
      ),
    );
  }
}
