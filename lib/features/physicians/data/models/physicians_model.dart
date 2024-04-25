class PhysiciansModel {
  final String name;
  final String? image;
  final String description;
  final double? rating;
  final String address;
  final String phoneNumber;
  final String email;
  final String lastVisitDate;

  PhysiciansModel({
    required this.name,
    this.image,
    required this.description,
    this.rating,
    required this.address,
    required this.phoneNumber,
    required this.email,
    required this.lastVisitDate,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'rating': rating,
      'address': address,
      'phoneNumber': phoneNumber,
      'email': email,
      'lastVisitDate': lastVisitDate
    };
  }

  factory PhysiciansModel.fromJson(Map<String, dynamic> json) {
    return PhysiciansModel(
        name: json['name'],
        image: json['image'],
        description: json['description'],
        rating: json['rating'],
        address: json['address'],
        phoneNumber: json['phoneNumber'],
        email: json['email'],
        lastVisitDate: json['lastVisitDate']);
  }
}
