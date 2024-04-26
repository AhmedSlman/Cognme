abstract class PatientState {}

class PatientInitial extends PatientState {}

class PatientLoading extends PatientState {}

class PatientLoaded extends PatientState {
  final Map<String, dynamic> patientData;

  PatientLoaded(this.patientData);
}

class PatientError extends PatientState {
  final String errorMessage;

  PatientError(this.errorMessage);
}
