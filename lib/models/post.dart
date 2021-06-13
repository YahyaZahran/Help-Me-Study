class Post {
  int id;
  String title;
  double postedAt;
  String description;
  int author;
  String authorName;
  int likes;
  int commentsNo;
  List<String> tags;

  Post({
    this.id,
    this.title,
    this.postedAt,
    this.description,
    this.author,
    this.authorName,
    this.likes,
    this.commentsNo,
    this.tags,
  });

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    postedAt = json['posted_at'];
    description = json['description'];
    author = json['author'];
    authorName = json['author_name'];
    likes = json['likes'];
    commentsNo = json['comments_no'];
    if (json['tags'] != null) {
      tags = <String>[];
      json['tags'].forEach((v) {
        tags.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['posted_at'] = this.postedAt;
    data['description'] = this.description;
    data['author'] = this.author;
    data['author_name'] = this.authorName;
    data['likes'] = this.likes;
    data['comments_no'] = this.commentsNo;
    if (this.tags != null) {
      data['tags'] = this.tags;
    }
    return data;
  }
}
