import 'package:cognme/core/common/widgets/custom_button.dart';
import 'package:cognme/core/routes/router_names.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class PhysicianForm extends StatelessWidget {
  const PhysicianForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 100,
        title: const Text(
          'Physicians Form',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                labelText: 'Doctor’s Name',
              ),
               SizedBox(
                height: context.height*0.01,
              ),
               CustomTextField(
                labelText: 'Phone',
              ),
              SizedBox(
                height: context.height*0.01,
              ),
              CustomTextField(
                labelText: 'Email Address',
              ),
              SizedBox(
                height: context.height*0.01,
              ),
               CustomTextField(
                labelText: 'Specialization',
              ),
              SizedBox(
                height: context.height*0.01,
              ),
               CustomTextField(
                labelText: 'Address',
              ),
              SizedBox(
                height: context.height*0.01,
              ),
               CustomTextField(
                labelText: 'Last Visit Date',
              ),
             SizedBox(
                height: context.height*0.01,
              ),
               CustomTextField(
                labelText: 'Upload prescription',
              ),
              SizedBox(
                height: context.height*0.04,
              ),
              CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouterNames.physicalView);
                },
                text: 'Submit',
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
