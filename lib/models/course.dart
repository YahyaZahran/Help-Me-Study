class Course {
  int id;
  String authorName;
  int author;
  String photo;
  String title;
  String description;
  int cost;
  double postedAt;
  List<String> tags;

  Course(
      {this.id,
      this.authorName,
      this.author,
      this.photo,
      this.title,
      this.description,
      this.cost,
      this.postedAt,
      this.tags});

  Course.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    authorName = json['author_name'];
    author = json['author'];
    photo = json['photo'];
    title = json['title'];
    description = json['description'];
    cost = json['cost'];
    postedAt = json['posted_at'];
    tags = json['tags'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['author_name'] = this.authorName;
    data['author'] = this.author;
    data['photo'] = this.photo;
    data['title'] = this.title;
    data['description'] = this.description;
    data['cost'] = this.cost;
    data['posted_at'] = this.postedAt;
    data['tags'] = this.tags;
    return data;
  }
}
