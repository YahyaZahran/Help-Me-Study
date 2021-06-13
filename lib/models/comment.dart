class Comment {
  int id;
  int author;
  int postId;
  String text;
  String authorName;
  double postedAt;

  Comment({
    this.id,
    this.author,
    this.postId,
    this.text,
    this.authorName,
    this.postedAt,
  });

  Comment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    author = json['author'];
    postId = json['post_id'];
    text = json['text'];
    authorName = json['author_name'];
    postedAt = json['posted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['author'] = this.author;
    data['post_id'] = this.postId;
    data['text'] = this.text;
    data['author_name'] = this.authorName;
    data['posted_at'] = this.postedAt;
    return data;
  }
}
