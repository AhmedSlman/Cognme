class ContactsModel {
  final String name;
  final String number;
  final String? image; // Change type to String?

  ContactsModel({
    required this.name,
    required this.number,
    this.image,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'number': number,
      'image': image,
    };
  }

  factory ContactsModel.fromJson(Map<String, dynamic> json) {
    return ContactsModel(
      name: json['name'],
      number: json['number'],
      image: json['image'], // No need for XFile conversion
    );
  }
}
