import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  String? id;
  String? name;
  String? dateofbirth;
  String? address;
  String? email;
  String? phone;
  String? status;
  User({
    this.id,
    this.name,
    this.dateofbirth,
    this.address,
    this.email,
    this.phone,
    this.status,
  });

  User copyWith({
    String? id,
    String? name,
    String? dateofbirth,
    String? address,
    String? email,
    String? phone,
    String? status,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      dateofbirth: dateofbirth ?? this.dateofbirth,
      address: address ?? this.address,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'dateofbirth': dateofbirth,
      'address': address,
      'email': email,
      'phone': phone,
      'status': status,
    };
  }

  factory User.fromMap(DocumentSnapshot map) {
    return User(
      id: map['id'],
      name: map['name'],
      dateofbirth: map['dateofbirth'],
      address: map['address'],
      email: map['email'],
      phone: map['phone'],
      status: map['status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, name: $name, dateofbirth: $dateofbirth, address: $address, email: $email, phone: $phone, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.name == name &&
        other.dateofbirth == dateofbirth &&
        other.address == address &&
        other.email == email &&
        other.phone == phone &&
        other.status == status;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        dateofbirth.hashCode ^
        address.hashCode ^
        email.hashCode ^
        phone.hashCode ^
        status.hashCode;
  }
}
