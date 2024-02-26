import 'package:cognme/core/errors/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButtonDoctor extends StatelessWidget {
  const CustomButtonDoctor({
    Key? key,
    required this.lable,
    this.height,
    this.width,
    this.onTap,
    this.isOutlined,
    this.backgroundColor,
    this.textColor,
  }) : super(key: key);
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
              ? const BorderSide(
                  width: 2,
                  color: Colors.white,
                )
              : BorderSide.none,
        ),
        child: Text(lable, style: AppStyles.s14),
      ),
    );
  }
}
