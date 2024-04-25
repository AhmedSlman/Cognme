import 'package:cognme/features/physicians/presentation/cubit/physicians_cubit.dart';
import 'package:cognme/features/physicians/presentation/views/physician_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'physician_category.dart';

class DoctorCardsListView extends StatelessWidget {
  const DoctorCardsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhysiciansCubit, PhysiciansState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return GestureDetector(
                onLongPress: () {
                  showDeleteConfirmationDialog(
                      context, context.read<PhysiciansCubit>(), index);
                },
                child: DoctorCategory(
                  name: state.physicians[index].name,
                  description: state.physicians[index].description,
                  address: state.physicians[index].address,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PhysicianInfo(
                                  name: state.physicians[index].name,
                                  phone: state.physicians[index].phoneNumber,
                                  address: state.physicians[index].address,
                                  description:
                                      state.physicians[index].description,
                                  email: state.physicians[index].email,
                                  lastVisited:
                                      state.physicians[index].lastVisitDate,
                                )));
                  },
                ),
              );
            },
            itemCount: state.physicians.length,
          ),
        );
      },
    );
  }
}

void showDeleteConfirmationDialog(
    BuildContext context, PhysiciansCubit physiciansCubit, int index) {
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
            physiciansCubit.removePhysician(index);
          },
          child: const Text('Yes'),
        ),
      ],
    ),
  );
}
