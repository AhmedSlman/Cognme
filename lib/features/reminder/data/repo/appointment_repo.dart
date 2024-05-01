import 'dart:convert';

import 'package:cognme/core/data/Api/api_consumer.dart';
import 'package:cognme/core/errors/exceptions.dart';
import 'package:cognme/core/utils/app_constants.dart';
import 'package:cognme/features/reminder/data/models/appointmet_model.dart';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppointmentRepository {
  final ApiConsumer api;
  final SharedPreferences sharedPreferences;

  AppointmentRepository({
    required this.api,
    required this.sharedPreferences,
  });

  Future<Either<String, List<AppointmentModel>>> getAppointments() async {
    try {
      final response =
          await api.get("****************************************");
      final List<AppointmentModel> appointments =
          (response.data['data'] as List)
              .map((json) => AppointmentModel.fromJson(json))
              .toList();
      // Save appointments locally
      await _saveAppointmentsLocally(appointments);
      return Right(appointments);
    } on ServerException catch (e) {
      // لو فشل انه يجيب الداتا من api هيحيبها من اللوكال
      final localAppointments = await _getAppointmentsLocally();
      if (localAppointments.isNotEmpty) {
        return Right(localAppointments);
      } else {
        return Left(e.errorModel.errorMessage);
      }
    }
  }

  Future<Either<String, AppointmentModel>> createAppointment({
    required String appointmentDescription,
    required DateTime appointmentDate,
    required String userId,
  }) async {
    try {
      final response = await api.post(
        "******************************************",
        data: {
          'attributes': {
            'Appointment Discreption': appointmentDescription,
            'Appointment Date': appointmentDate.toIso8601String(),
            'created_at': DateTime.now().toIso8601String(),
            'updated_at': DateTime.now().toIso8601String(),
          },
          'relationships': {
            'user': {
              'id': userId,
            },
          },
        },
      );
      final appointment = AppointmentModel.fromJson(response);
      // بخزن اللي اتضاف لوكال
      final localAppointments = await _getAppointmentsLocally();
      localAppointments.add(appointment);
      await _saveAppointmentsLocally(localAppointments);
      return Right(appointment);
    } on ServerException catch (e) {
      return Left(e.errorModel.errorMessage);
    }
  }

  Future<Either<String, bool>> deleteAppointment(String appointmentId) async {
    try {
      await api.delete(EndPoints.singleAppointment(appointmentId));
      // Remove appointment locally
      final localAppointments = await _getAppointmentsLocally();
      localAppointments
          .removeWhere((appointment) => appointment.id == appointmentId);
      await _saveAppointmentsLocally(localAppointments);
      return const Right(true);
    } on ServerException catch (e) {
      return Left(e.errorModel.errorMessage);
    }
  }

  Future<void> _saveAppointmentsLocally(
      List<AppointmentModel> appointments) async {
    final List<String> appointmentsJson = appointments
        .map((appointment) => appointment.toJson().toString())
        .toList();
    await sharedPreferences.setStringList('appointments', appointmentsJson);
  }

  Future<List<AppointmentModel>> _getAppointmentsLocally() async {
    final List<String>? appointmentsJson =
        sharedPreferences.getStringList('appointments');
    if (appointmentsJson != null) {
      return appointmentsJson
          .map((json) => AppointmentModel.fromJson(jsonDecode(json)))
          .toList();
    } else {
      return [];
    }
  }
}
