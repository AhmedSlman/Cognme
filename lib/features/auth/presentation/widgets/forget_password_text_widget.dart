import 'package:cognme/features/auth/presentation/views/forgot_password_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/functions/custom_navigate.dart';
import '../../../../core/routes/routernames.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import '../views/forgot_password_view.dart';
import '../views/forgot_password_view.dart';

class ForgetPassWordTextWidget extends StatelessWidget {
  const ForgetPassWordTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customReplacementNavigate(context, '');
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(AppStrings.forgotPassword, style: AppStyles.s12),
      ),
    );
  }
}
