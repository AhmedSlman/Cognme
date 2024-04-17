import 'package:cognme/core/utils/app_constants.dart';

class RegisterModel{
  final String message;

  RegisterModel({required this.message});

  factory RegisterModel.fromJson(Map<String,dynamic>jsonData){
    return RegisterModel(message: jsonData[ApiKeys.message]);
  }
}