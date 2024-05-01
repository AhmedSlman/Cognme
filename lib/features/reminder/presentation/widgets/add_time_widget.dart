// ignore_for_file: must_be_immutable

import 'package:cognme/core/common/logic/dateAndTimeCubit/data_time_cubit.dart';
import 'package:cognme/core/common/models/data_time_model.dart';
import 'package:cognme/core/utils/app_styles.dart';
import 'package:cognme/core/utils/media_query.dart';
import 'package:cognme/features/reminder/presentation/widgets/data_time_text_field_widget.dart';
import 'package:cognme/features/reminder/presentation/widgets/time_period_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTimeWidget extends StatelessWidget {
  AddTimeWidget({
    super.key,
    this.hourController,
    this.minuteController,
    required this.selectedPeriod,
  });
  TextEditingController? hourController;
  TextEditingController? minuteController;
  final String selectedPeriod;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DateTimeCubit, DataTimeModel>(
      builder: (context, state) {
        return Row(
          children: [
            const Text(
              "Add Time",
              style: AppStyles.s16,
            ),
            SizedBox(width: context.width * 0.09),
            DataTimeTextField(
              controller: hourController,
              hintText: "H",
              keyboardType: TextInputType.number,
              onChanged: (value) {
                context.read<DateTimeCubit>().updateDateTime(
                      state.copyWith(hour: int.tryParse(value) ?? 0),
                    );
              },
            ),
            SizedBox(width: context.width * 0.06),
            DataTimeTextField(
              controller: minuteController,
              hintText: "M",
              keyboardType: TextInputType.number,
              onChanged: (value) {
                context.read<DateTimeCubit>().updateDateTime(
                      state.copyWith(minute: int.tryParse(value) ?? 0),
                    );
              },
            ),
            SizedBox(width: context.width * 0.06),
            TimePeriodWidget(
              selectedPeriod: selectedPeriod,
            )
          ],
        );
      },
    );
  }
}
