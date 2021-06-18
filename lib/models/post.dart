class Post {
  int id;
  double postedAt;
  String body;
  int author;
  String authorName;
  int likesCount;
  int commentsCount;
  List<String> tags;

  Post(
      {this.id,
      this.postedAt,
      this.body,
      this.author,
      this.authorName,
      this.likesCount,
      this.commentsCount,
      this.tags});

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];

    // FIXME  WHEN THE API IS READY
    postedAt = double.tryParse(json['posted_at'].toString());
    if (postedAt == null)
      postedAt =
          DateTime.parse(json['posted_at']).millisecondsSinceEpoch / 1000;
    body = json['body'];
    author = json['author'];
    authorName = json['author_name'];
    likesCount = json['likes_count'] ?? 0;
    commentsCount = json['comments_count'] ?? 0;
    tags = json['tags'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['posted_at'] = this.postedAt;
    data['body'] = this.body;
    data['author'] = this.author;
    data['author_name'] = this.authorName;
    data['likes_count'] = this.likesCount;
    data['comments_count'] = this.commentsCount;
    data['tags'] = this.tags;
    return data;
  }
}
