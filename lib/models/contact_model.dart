import 'dart:convert';

// {
//   "id": 0,
//   "name": "Tess Moore",
//   "email": "tmoore@gmail.com"
// },
class ContactModel {
  final int? id;
  final String name;
  final String email;

  const ContactModel({
    this.id,
    required this.name,
    required this.email,
  });



  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
    };
  }

  factory ContactModel.fromMap(Map<String, dynamic> map) {
    return ContactModel(
      id: map['id']?.toInt(),
      name: map['name'] ?? '',
      email: map['email'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ContactModel.fromJson(String source) => ContactModel.fromMap(json.decode(source));
}
