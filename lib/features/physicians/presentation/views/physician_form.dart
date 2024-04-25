// ignore_for_file: unused_local_variable

import 'package:cognme/core/common/functions/custom_navigate.dart';
import 'package:cognme/core/common/widgets/custom_button.dart';
import 'package:cognme/core/routes/router_names.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:cognme/features/physicians/data/models/physicians_model.dart';
import 'package:cognme/features/physicians/presentation/cubit/physicians_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhysicianForm extends StatelessWidget {
  PhysicianForm({super.key});
  final doctorNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailAddressController = TextEditingController();
  final specializationController = TextEditingController();
  final lastVistDateController = TextEditingController();
  final addressController = TextEditingController();

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
                controller: doctorNameController,
                labelText: 'Doctor’s Name',
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              CustomTextField(
                controller: phoneNumberController,
                labelText: 'Phone',
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              CustomTextField(
                controller: emailAddressController,
                labelText: 'Email Address',
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              CustomTextField(
                controller: specializationController,
                labelText: 'Specialization',
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              CustomTextField(
                controller: addressController,
                labelText: 'Address',
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              CustomTextField(
                controller: lastVistDateController,
                labelText: 'Last Visit Date',
              ),
              SizedBox(
                height: context.height * 0.01,
              ),
              SizedBox(
                height: context.height * 0.04,
              ),
              CustomButton(
                onPressed: () {
                  String doctorName = doctorNameController.text;
                  String phoneNumber = phoneNumberController.text;
                  String emailAddress = emailAddressController.text;
                  String specialization = specializationController.text;
                  String address = addressController.text;
                  String lastVisitDate = lastVistDateController.text;

                  BlocProvider.of<PhysiciansCubit>(context).addPhysician(
                    doctorName,
                    specialization,
                    emailAddress,
                    phoneNumber,
                    address,
                    lastVisitDate,
                  );

                  customReplacementNavigate(context, RouterNames.physicalView);
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
