import 'package:cognme/core/common/logic/dateAndTimeCubit/data_time_cubit.dart';
import 'package:cognme/core/common/models/data_time_model.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/features/reminder/presentation/widgets/data_time_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddDataWidget extends StatelessWidget {
  AddDataWidget({
    super.key,
    this.dayController,
    this.monthController,
    this.yearController,
  });
  TextEditingController? dayController;
  TextEditingController? monthController;
  TextEditingController? yearController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DateTimeCubit(),
      child: BlocBuilder<DateTimeCubit, DataTimeModel>(
        builder: (context, state) {
          return Row(
            children: [
              const Text(
                "Add Date",
                style: AppStyles.s16,
              ),
              const SizedBox(width: 40),
              DataTimeTextField(
                controller: dayController,
                hintText: "D",
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  context.read<DateTimeCubit>().updateDateTime(
                        state.copyWith(day: int.parse(value)),
                      );
                },
              ),
              const SizedBox(width: 20),
              DataTimeTextField(
                controller: monthController,
                hintText: "M",
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  context.read<DateTimeCubit>().updateDateTime(
                        state.copyWith(month: int.parse(value)),
                      );
                },
              ),
              const SizedBox(width: 20),
              DataTimeTextField(
                controller: yearController,
                hintText: "Y",
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  context.read<DateTimeCubit>().updateDateTime(
                        state.copyWith(day: int.parse(value)),
                      );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
