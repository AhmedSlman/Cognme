import 'package:cognme/core/common/functions/custom_navigate.dart';
import 'package:cognme/core/routes/router_names.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/patient_info/presentation/widget/patient_form.dart';
import 'package:flutter/material.dart';

class PatientInfoScreen extends StatelessWidget {
  const PatientInfoScreen({super.key});

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
          "Patient Info",
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
              const PatientForm(),
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
