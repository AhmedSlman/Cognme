import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:cognme/features/emg_call/data/models/contact_model.dart';
import 'package:cognme/features/emg_call/presentation/cubit/eemergacy_calls_state.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EemergacyCallsCubit extends Cubit<EemergacyCallsState> {
  late SharedPreferences prefs;
  EemergacyCallsCubit() : super(EemergacyCallsState([])) {
    _loadContacts();
  }

  void addContact(String name, String number, XFile image) {
    final List<ContactsModel> updatedContacts = List.from(state.contacts)
      ..add(ContactsModel(name: name, number: number, image: image.path));
    emit(EemergacyCallsState(updatedContacts.cast<ContactsModel>()));
    _saveContacts(updatedContacts);
  }

  Future<void> _saveContacts(List<ContactsModel> contacts) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Load existing contacts from SharedPreferences
    List<String>? existingContactsJson = prefs.getStringList("contacts");
    List<ContactsModel> existingContacts = existingContactsJson != null
        ? existingContactsJson
            .map((json) => ContactsModel.fromJson(jsonDecode(json)))
            .toList()
        : [];

    // Merge existing contacts with new contacts
    List<ContactsModel> allContacts = List.from(existingContacts)
      ..addAll(contacts);

    List<String> jsonContactsList = allContacts.map((contact) {
      Map<String, dynamic> jsonContact = contact.toJson();
      if (jsonContact['image'] is XFile) {
        jsonContact['image'] = jsonEncode(jsonContact['image'].path);
      }
      return jsonEncode(jsonContact);
    }).toList();

    await prefs.setStringList("contacts", jsonContactsList);
  }

  Future<void> _loadContacts() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? jsonContacts = prefs.getStringList("contacts");
    if (jsonContacts != null) {
      List<ContactsModel> contacts = jsonContacts
          .map((json) => ContactsModel.fromJson(jsonDecode(json)))
          .toList();
      emit(EemergacyCallsState(contacts.cast<ContactsModel>()));
    }
  }

  Future<void> deleteContact(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? existingJsonContacts = prefs.getStringList("contacts");

    if (existingJsonContacts != null &&
        index >= 0 &&
        index < existingJsonContacts.length) {
      List<ContactsModel> contacts = existingJsonContacts
          .map((json) => ContactsModel.fromJson(jsonDecode(json)))
          .toList();

      contacts.removeAt(index);

      List<Map<String, dynamic>> updatedJsonContacts = [];
      for (var contact in contacts) {
        Map<String, dynamic> jsonContact = contact.toJson();
        for (var key in jsonContact.keys.toList()) {
          if (jsonContact[key] is XFile) {
            jsonContact[key] = jsonEncode(jsonContact[key].path);
          }
        }
        updatedJsonContacts.add(jsonContact);
      }

      List<String> jsonContactsList =
          updatedJsonContacts.map((json) => jsonEncode(json)).toList();
      await prefs.setStringList("contacts", jsonContactsList);
      emit(EemergacyCallsState(contacts.cast<ContactsModel>()));
    }
  }
}
