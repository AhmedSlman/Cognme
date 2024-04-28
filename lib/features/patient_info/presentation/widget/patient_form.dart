import 'package:cognme/core/common/widgets/custom_button.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/patient_info/presentation/widget/patient_text_form.dart';
import 'package:flutter/material.dart';

class PatientForm extends StatelessWidget {
  const PatientForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PatientTextForm(
            lable: 'Patient Name',
          ),
          SizedBox(
            height: context.height * 0.02,
          ),
          const PatientTextForm(
            lable: 'Address',
          ),
          SizedBox(
            height: context.height * 0.02,
          ),
          const PatientTextForm(
            lable: 'Medical History',
          ),
          SizedBox(
            height: context.height * 0.02,
          ),
          PatientTextForm(
            lable: 'Add Clothes',
            suffix: Icons.file_upload_outlined,
            suffixPressed: () {},
          ),
          SizedBox(
            height: context.height * 0.04,
          ),
          CustomButton(text: 'Submit', onPressed: () {},)
        ],
      ),
    );
  }
}
