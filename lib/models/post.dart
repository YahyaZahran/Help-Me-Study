import 'dart:convert';

import 'package:flutter/material.dart';

import 'user.dart';

@immutable
class Post {
  final int id;
  final User author;
  final String description;
  final DateTime postedAt;
  final int likes;
  final int commentsNumber;
  Post({
    @required this.id,
    @required this.author,
    @required this.description,
    @required this.postedAt,
    @required this.likes,
    @required this.commentsNumber,
  });

  Post copyWith({
    int id,
    User author,
    String description,
    DateTime postedAt,
    int likes,
    int commentsNumber,
  }) {
    return Post(
      id: id ?? this.id,
      author: author ?? this.author,
      description: description ?? this.description,
      postedAt: postedAt ?? this.postedAt,
      likes: likes ?? this.likes,
      commentsNumber: commentsNumber ?? this.commentsNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'author': author.toMap(),
      'description': description,
      'postedAt': postedAt.millisecondsSinceEpoch,
      'likes': likes,
      'commentsNumber': commentsNumber,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id'],
      author: User.fromMap(map['author']),
      description: map['description'],
      postedAt: DateTime.fromMillisecondsSinceEpoch(map['postedAt']),
      likes: map['likes'],
      commentsNumber: map['commentsNumber'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Post(id: $id, author: $author, description: $description, postedAt: $postedAt, likes: $likes, commentsNumber: $commentsNumber)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Post &&
        other.id == id &&
        other.author == author &&
        other.description == description &&
        other.postedAt == postedAt &&
        other.likes == likes &&
        other.commentsNumber == commentsNumber;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        author.hashCode ^
        description.hashCode ^
        postedAt.hashCode ^
        likes.hashCode ^
        commentsNumber.hashCode;
  }
}
