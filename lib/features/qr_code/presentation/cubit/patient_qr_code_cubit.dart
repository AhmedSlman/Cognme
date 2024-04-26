import 'package:bloc/bloc.dart';
import 'package:cognme/features/qr_code/presentation/cubit/patient_qr_code_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PatientCubit extends Cubit<PatientState> {
  PatientCubit() : super(PatientInitial());

  void savePatientData(Map<String, dynamic> patientData) async {
    emit(PatientLoading());
    try {
      await _savePatientDataToPrefs(patientData);
      emit(PatientLoaded(patientData));
    } catch (e) {
      emit(PatientError("Failed to save patient data"));
    }
  }

  Future<void> _savePatientDataToPrefs(Map<String, dynamic> patientData) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('patientData', patientData.toString());
  }
}
