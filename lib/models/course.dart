import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'user.dart';

class Course {
  final int id;
  final String title;
  final String coverUrl;
  final User author;
  final DateTime createdAt;
  final String description;
  final List<String> dates;
  final int price;
  final String city;
  final int totalHours;
  Course({
    @required this.id,
    @required this.title,
    @required this.coverUrl,
    @required this.author,
    @required this.createdAt,
    @required this.description,
    @required this.dates,
    @required this.price,
    @required this.city,
    @required this.totalHours,
  });

  Course copyWith({
    int id,
    String title,
    String coverUrl,
    User author,
    DateTime createdAt,
    String description,
    List<String> dates,
    int price,
    String city,
    int totalHours,
  }) {
    return Course(
      id: id ?? this.id,
      title: title ?? this.title,
      coverUrl: coverUrl ?? this.coverUrl,
      author: author ?? this.author,
      createdAt: createdAt ?? this.createdAt,
      description: description ?? this.description,
      dates: dates ?? this.dates,
      price: price ?? this.price,
      city: city ?? this.city,
      totalHours: totalHours ?? this.totalHours,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'coverUrl': coverUrl,
      'author': author.toMap(),
      'createdAt': createdAt.millisecondsSinceEpoch,
      'description': description,
      'dates': dates,
      'price': price,
      'city': city,
      'totalHours': totalHours,
    };
  }

  factory Course.fromMap(Map<String, dynamic> map) {
    return Course(
      id: map['id'],
      title: map['title'],
      coverUrl: map['coverUrl'],
      author: User.fromMap(map['author']),
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt']),
      description: map['description'],
      dates: List<String>.from(map['dates']),
      price: map['price'],
      city: map['city'],
      totalHours: map['totalHours'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Course.fromJson(String source) => Course.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Course(id: $id, title: $title, coverUrl: $coverUrl, author: $author, createdAt: $createdAt, description: $description, dates: $dates, price: $price, city: $city, totalHours: $totalHours)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Course &&
        other.id == id &&
        other.title == title &&
        other.coverUrl == coverUrl &&
        other.author == author &&
        other.createdAt == createdAt &&
        other.description == description &&
        listEquals(other.dates, dates) &&
        other.price == price &&
        other.city == city &&
        other.totalHours == totalHours;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        coverUrl.hashCode ^
        author.hashCode ^
        createdAt.hashCode ^
        description.hashCode ^
        dates.hashCode ^
        price.hashCode ^
        city.hashCode ^
        totalHours.hashCode;
  }
}
