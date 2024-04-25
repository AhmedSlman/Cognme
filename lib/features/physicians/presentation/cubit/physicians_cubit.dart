import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:cognme/features/emg_call/data/models/contact_model.dart';
import 'package:cognme/features/emg_call/presentation/cubit/eemergacy_calls_state.dart';
import 'package:cognme/features/physicians/data/models/physicians_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'physicians_state.dart';

class PhysiciansCubit extends Cubit<PhysiciansState> {
  late SharedPreferences pref;

  PhysiciansCubit() : super(PhysiciansState([])) {
    _loadPhysicians();
  }

  void addPhysician(
    String doctorName,
    String doctorSpeciality,
    String doctorEmail,
    String doctorPhone,
    String doctorAddress,
    String lastVisited,
  ) {
    final List<PhysiciansModel> updatedPhysicians = List.from(state.physicians)
      ..add(PhysiciansModel(
        name: doctorName,
        description: doctorSpeciality,
        address: doctorAddress,
        phoneNumber: doctorPhone,
        email: doctorEmail,
        lastVisitDate: lastVisited,
      ));
    emit(PhysiciansState(updatedPhysicians.cast<PhysiciansModel>()));
    _savePhysicians(updatedPhysicians);
  }

  Future<void> _savePhysicians(List<PhysiciansModel> physicians) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? jsonPhysiciansJson = prefs.getStringList("physicians");
    List<PhysiciansModel> existingPhysicians = jsonPhysiciansJson != null
        ? jsonPhysiciansJson
            .map((json) => PhysiciansModel.fromJson(jsonDecode(json)))
            .toList()
        : [];

    List<PhysiciansModel> allPhysicians = List.from(existingPhysicians)
      ..addAll(physicians);

    List<String> jsonPhysiciansList = allPhysicians
        .map((physician) => jsonEncode(physician.toJson()))
        .toList();
    await prefs.setStringList("physicians", jsonPhysiciansList);
  }

  void _loadPhysicians() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? jsonPhysicians = prefs.getStringList("physicians");
    if (jsonPhysicians != null) {
      List<PhysiciansModel> physicians = jsonPhysicians
          .map((json) => PhysiciansModel.fromJson(jsonDecode(json)))
          .toList();
      emit(PhysiciansState(physicians.cast<PhysiciansModel>()));
    }
  }

  Future<void> removePhysician(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? jsonPhysicians = prefs.getStringList("physicians");

    if (jsonPhysicians != null && index >= 0 && index < jsonPhysicians.length) {
      List<PhysiciansModel> physicians = jsonPhysicians
          .map((json) => PhysiciansModel.fromJson(jsonDecode(json)))
          .toList();
      physicians.removeAt(index);
      List<String> jsonPhysiciansList = physicians
          .map((physician) => jsonEncode(physician.toJson()))
          .toList();
      await prefs.setStringList("physicians", jsonPhysiciansList);
      emit(PhysiciansState(physicians.cast<PhysiciansModel>()));
    }
  }
}
