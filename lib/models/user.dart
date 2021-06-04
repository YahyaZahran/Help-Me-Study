import 'dart:convert';
import 'package:flutter/foundation.dart';

import 'package:testap/models/skill.dart';

class User {
  final int id;
  final String userName;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String bio;
  final String imageUrl;
  final bool gender;
  final DateTime birthDate;
  final String city;
  final double rate; // max 5
  final int coursesCount;
  final List<Skill> skills;
  User({
    @required this.id,
    @required this.userName,
    @required this.firstName,
    @required this.lastName,
    @required this.phoneNumber,
    @required this.bio,
    @required this.imageUrl,
    @required this.gender,
    @required this.birthDate,
    @required this.city,
    @required this.rate,
    @required this.coursesCount,
    @required this.skills,
  });

  User copyWith({
    int id,
    String userName,
    String firstName,
    String lastName,
    String phoneNumber,
    String bio,
    String imageUrl,
    bool gender,
    DateTime birthDate,
    String city,
    double rate,
    int coursesCount,
    List<Skill> skills,
  }) {
    return User(
      id: id ?? this.id,
      userName: userName ?? this.userName,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      bio: bio ?? this.bio,
      imageUrl: imageUrl ?? this.imageUrl,
      gender: gender ?? this.gender,
      birthDate: birthDate ?? this.birthDate,
      city: city ?? this.city,
      rate: rate ?? this.rate,
      coursesCount: coursesCount ?? this.coursesCount,
      skills: skills ?? this.skills,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'userName': userName,
      'firstName': firstName,
      'lastName': lastName,
      'phoneNumber': phoneNumber,
      'bio': bio,
      'imageUrl': imageUrl,
      'gender': gender,
      'birthDate': birthDate.millisecondsSinceEpoch,
      'city': city,
      'rate': rate,
      'coursesCount': coursesCount,
      'skills': skills?.map((x) => x.toMap())?.toList(),
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      userName: map['userName'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      phoneNumber: map['phoneNumber'],
      bio: map['bio'],
      imageUrl: map['imageUrl'],
      gender: map['gender'],
      birthDate: DateTime.fromMillisecondsSinceEpoch(map['birthDate']),
      city: map['city'],
      rate: map['rate'],
      coursesCount: map['coursesCount'],
      skills: List<Skill>.from(map['skills']?.map((x) => Skill.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, userName: $userName, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, bio: $bio, imageUrl: $imageUrl, gender: $gender, birthDate: $birthDate, city: $city, rate: $rate, coursesCount: $coursesCount, skills: $skills)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.id == id &&
        other.userName == userName &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.phoneNumber == phoneNumber &&
        other.bio == bio &&
        other.imageUrl == imageUrl &&
        other.gender == gender &&
        other.birthDate == birthDate &&
        other.city == city &&
        other.rate == rate &&
        other.coursesCount == coursesCount &&
        listEquals(other.skills, skills);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        userName.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        phoneNumber.hashCode ^
        bio.hashCode ^
        imageUrl.hashCode ^
        gender.hashCode ^
        birthDate.hashCode ^
        city.hashCode ^
        rate.hashCode ^
        coursesCount.hashCode ^
        skills.hashCode;
  }
}
