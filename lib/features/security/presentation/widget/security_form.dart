import 'package:cognme/core/common/widgets/custom_button.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/security/presentation/widget/security_text_form.dart';
import 'package:flutter/material.dart';

class SecurityForm extends StatelessWidget {
  const SecurityForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SecurityTextForm(
            lable: 'Name',
          ),
          SizedBox(
            height: context.height * 0.02,
          ),
          const SecurityTextForm(
            lable: 'Email',
          ),
          SizedBox(
            height: context.height * 0.02,
          ),
          const SecurityTextForm(
            lable: 'Phone',
          ),
          SizedBox(
            height: context.height * 0.02,
          ),
          const SecurityTextForm(
            lable: 'Password',
          ),
          SizedBox(
            height: context.height * 0.04,
          ),
          CustomButton(text: 'Save', onPressed: () {})
        ],
      ),
    );
  }
}
