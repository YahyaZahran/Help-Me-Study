import 'package:flutter/material.dart';
import 'package:testap/controllers/posts_controller.dart';
import 'package:testap/pages/posts_page/post_widget.dart';
import 'package:testap/utils/fetchable_list/widget.dart';

class PostsPage extends FetchableList<PostsController> {
  @override
  Widget itemBuilder(BuildContext buildContext, int idx) {
    return PostWidget(post: controller.items[idx]);
  }
}
