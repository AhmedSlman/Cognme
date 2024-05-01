import 'package:cognme/core/utils/app_assets.dart';
import 'package:cognme/core/utils/app_colors.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/emg_call/presentation/cubit/eemergacy_calls_cubit.dart';
import 'package:cognme/features/emg_call/presentation/cubit/eemergacy_calls_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactsListView extends StatelessWidget {
  const ContactsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EemergacyCallsCubit, EemergacyCallsState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.contacts.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Container(
                height: context.height * 0.09,
                width: context.width * 0.9,
                decoration: BoxDecoration(
                    color: AppColors.whiteOfColor,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.greyOfText,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                          spreadRadius: 0)
                    ]),
                child: ListTile(
                  leading: state.contacts.isNotEmpty &&
                          state.contacts[index].image != null
                      ? CircleAvatar(
                          backgroundImage: AssetImage(
                            state.contacts[index].image as String,
                          ),
                        )
                      : const CircleAvatar(
                          backgroundImage: AssetImage(
                            AppAssets.Victor1,
                          ),
                        ),
                  title: Text(
                    state.contacts[index].name,
                    style: AppStyles.regularStyle18,
                  ),
                  subtitle: Text(
                    state.contacts[index].number,
                  ),
                  onLongPress: () {
                    showDeleteConfirmationDialog(
                        context, context.read<EemergacyCallsCubit>(), index);
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}

void showDeleteConfirmationDialog(
    BuildContext context, EemergacyCallsCubit eemergacyCallsCubit, int index) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Delete'),
      content: const Text('Are you sure you want to delete?'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
            eemergacyCallsCubit.deleteContact(index);
          },
          child: const Text('Yes'),
        ),
      ],
    ),
  );
}
