// ignore_for_file: file_names
import 'package:cognme/core/common/functions/custom_navigate.dart';
import 'package:cognme/core/common/logic/getIamgeCubit/get_image_cubit.dart';
import 'package:cognme/core/common/widgets/btn.dart';
import 'package:cognme/core/common/widgets/pick_image.dart';
import 'package:cognme/core/routes/router_names.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/core/common/widgets/custom_app_bar.dart';
import 'package:cognme/features/emg_call/presentation/cubit/eemergacy_calls_cubit.dart';
import 'package:cognme/features/emg_call/presentation/widgets/add_call_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class AddCaller extends StatelessWidget {
  AddCaller({super.key});
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.width * 0.04),
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 30),
              CustomAppBar(
                label: "Add Caller",
                appBarLeading: IconButton(
                  onPressed: () {
                    customReplacementNavigate(
                        context, RouterNames.EmergencyCallPage);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 30,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Center(child: PickImageWidget()),
              const SizedBox(height: 20),
              AddCallTextFormFieldWidget(
                labelText: 'Name',
                icon: const Icon(Icons.person),
                controller: nameController,
              ),
              const SizedBox(height: 20),
              AddCallTextFormFieldWidget(
                textInputType: TextInputType.phone,
                labelText: 'Phone Number',
                icon: const Icon(Icons.phone),
                controller: phoneController,
              ),
              const SizedBox(height: 20),
              CustomSmallButtom(
                backgroundColor: AppColors.mainColor,
                textColor: AppColors.whiteOfColor,
                lable: "Add Contact",
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    String name = nameController.text;
                    String number = phoneController.text;
                    XFile image = XFile(BlocProvider.of<GetImageCubit>(context)
                        .profilePic!
                        .path);
                    BlocProvider.of<EemergacyCallsCubit>(context)
                        .addContact(name, number, image);
                    customReplacementNavigate(
                      context,
                      RouterNames.EmergencyCallPage,
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
