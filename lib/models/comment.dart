import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'user.dart';

class Comment {
  final User author;
  final String body;
  final DateTime commentedAt;
  Comment({
    @required this.author,
    @required this.body,
    @required this.commentedAt,
  });

  Comment copyWith({
    User author,
    String body,
    DateTime commentedAt,
  }) {
    return Comment(
      author: author ?? this.author,
      body: body ?? this.body,
      commentedAt: commentedAt ?? this.commentedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'author': author.toMap(),
      'body': body,
      'commentedAt': commentedAt.millisecondsSinceEpoch,
    };
  }

  factory Comment.fromMap(Map<String, dynamic> map) {
    return Comment(
      author: User.fromMap(map['author']),
      body: map['body'],
      commentedAt: DateTime.fromMillisecondsSinceEpoch(map['commentedAt']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Comment.fromJson(String source) =>
      Comment.fromMap(json.decode(source));

  @override
  String toString() =>
      'Comment(author: $author, body: $body, commentedAt: $commentedAt)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Comment &&
        other.author == author &&
        other.body == body &&
        other.commentedAt == commentedAt;
  }

  @override
  int get hashCode => author.hashCode ^ body.hashCode ^ commentedAt.hashCode;
}
