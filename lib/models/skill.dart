import 'dart:convert';

class Skill {
  final String title;
  final String description;
  Skill(
    this.title,
    this.description,
  );

  Skill copyWith({
    String title,
    String description,
  }) {
    return Skill(
      title ?? this.title,
      description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
    };
  }

  factory Skill.fromMap(Map<String, dynamic> map) {
    return Skill(
      map['title'],
      map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Skill.fromJson(String source) => Skill.fromMap(json.decode(source));

  @override
  String toString() => 'Skill(title: $title, description: $description)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Skill &&
        other.title == title &&
        other.description == description;
  }

  @override
  int get hashCode => title.hashCode ^ description.hashCode;
}
