import 'package:cognme/core/utils/app_strings.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'custom_check_box.dart';

class TermsAndConditionsWidget extends StatelessWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(),
        Text.rich(
          TextSpan(
            children: [
              const TextSpan(
                text: AppStrings.iHaveAgreeToOur,
                style: AppStyles.formText16,
              ),
              TextSpan(
                text: AppStrings.termsAndCondition,
                style: AppStyles.formText16
                    .copyWith(decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
