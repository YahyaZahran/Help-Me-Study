import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'user.dart';

class Review {
  final User author;
  final String description;
  final double rate;
  Review({
    @required this.author,
    @required this.description,
    @required this.rate,
  });

  Review copyWith({
    User author,
    String description,
    double rate,
  }) {
    return Review(
      author: author ?? this.author,
      description: description ?? this.description,
      rate: rate ?? this.rate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'author': author.toJson(),
      'description': description,
      'rate': rate,
    };
  }

  factory Review.fromMap(Map<String, dynamic> map) {
    return Review(
      author: User.fromJson(map['author']),
      description: map['description'],
      rate: map['rate'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Review.fromJson(String source) => Review.fromMap(json.decode(source));

  @override
  String toString() =>
      'Review(author: $author, description: $description, rate: $rate)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Review &&
        other.author == author &&
        other.description == description &&
        other.rate == rate;
  }

  @override
  int get hashCode => author.hashCode ^ description.hashCode ^ rate.hashCode;
}
