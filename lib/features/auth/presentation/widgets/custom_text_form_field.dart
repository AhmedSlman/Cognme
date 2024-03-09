import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.labelText,
    this.onChanged,
    this.onFieldSubmitted,
    this.suffixIcon,
    this.obscureText,
  });
  final String labelText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return "This field is required";
          } else {
            return null;
          }
        },
        obscureText: obscureText ?? false,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          labelText: labelText,
          labelStyle: AppStyles.formText16,
          border: getBorderStyle(),
          enabledBorder: getBorderStyle(),
          focusedBorder: getBorderStyle(),
        ),
      ),
    );
  }
}

UnderlineInputBorder getBorderStyle() {
  return UnderlineInputBorder(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.black, width: 1));
}
