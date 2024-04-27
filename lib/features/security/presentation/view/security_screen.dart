import 'package:cognme/core/common/functions/custom_navigate.dart';
import 'package:cognme/core/routes/router_names.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/security/presentation/widget/security_form.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            customReplacementNavigate(context, RouterNames.settingsScreen);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text(
          "Security",
          style: AppStyles.boldStyle28,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.height * 0.05,
              ),
              Text(
                "Personal Information",
                style: AppStyles.s18.copyWith(color: AppColors.greyOfText),
              ),
              SizedBox(
                height: context.height * 0.03,
              ),
              const SecurityForm(),
              SizedBox(
                height: context.height * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
