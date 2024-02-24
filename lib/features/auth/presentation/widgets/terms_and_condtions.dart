import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import 'custom_check_box.dart';

class TermsAndCondtionsWidget extends StatelessWidget {
  const TermsAndCondtionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: AppStrings.iHaveAgreeToOur,
                style: AppStyles.s12,
              ),
              TextSpan(
                text: AppStrings.termsAndCondition,
                style: AppStyles.s12
                    .copyWith(decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
