import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
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
                style: TextStyle(fontSize: 14),
              ),
              TextSpan(
                text: AppStrings.termsAndCondition,
                style: const TextStyle(fontSize: 14)
                    .copyWith(decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
