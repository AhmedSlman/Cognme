class AppointmentModel {
  String id;
  AppointmentAttributes attributes;
  AppointmentRelationships relationships;

  AppointmentModel({
    required this.id,
    required this.attributes,
    required this.relationships,
  });

  factory AppointmentModel.fromJson(Map<String, dynamic> json) {
    return AppointmentModel(
      id: json['id'],
      attributes: AppointmentAttributes.fromJson(json['attributes']),
      relationships: AppointmentRelationships.fromJson(json['relationships']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'attributes': attributes.toJson(),
      'relationships': relationships.toJson(),
    };
  }
}

class AppointmentAttributes {
  String appointmentDescription;
  DateTime appointmentDate;
  DateTime createdAt;
  DateTime updatedAt;

  AppointmentAttributes({
    required this.appointmentDescription,
    required this.appointmentDate,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AppointmentAttributes.fromJson(Map<String, dynamic> json) {
    return AppointmentAttributes(
      appointmentDescription: json['Appointment Discreption'],
      appointmentDate: DateTime.parse(json['Appointment Date']),
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Appointment Discreption': appointmentDescription,
      'Appointment Date': appointmentDate.toIso8601String(),
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }
}

class AppointmentRelationships {
  String userId;
  String userName;

  AppointmentRelationships({
    required this.userId,
    required this.userName,
  });

  factory AppointmentRelationships.fromJson(Map<String, dynamic> json) {
    return AppointmentRelationships(
      userId: json['user']['id'],
      userName: json['user']['user name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user': {
        'id': userId,
        'user name': userName,
      },
    };
  }
}
