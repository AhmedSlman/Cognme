import 'package:bloc/bloc.dart';
import 'package:cognme/core/common/models/data_time_model.dart';
import 'package:meta/meta.dart';

part 'data_time_state.dart';

class DateTimeCubit extends Cubit<DataTimeModel> {
  DateTimeCubit() : super(DataTimeModel.fromDataTime(DateTime.now()));

  void updateDateTime(DataTimeModel dateTimeModel) => emit(dateTimeModel);
}
