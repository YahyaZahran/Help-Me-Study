import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testap/controllers/comments_controller.dart';
import 'package:testap/pages/posts_page/comments/comment_widget.dart';
import 'package:testap/utils/fetchable_list/widget.dart';

class CommentsPage extends FetchableList<CommentsController> {
  CommentsPage()
      : super(
            scrollController: Get.find<CommentsController>().scrollController);
  @override
  Widget itemBuilder(BuildContext buildContext, int index) {
    return CommentWidget(comment: controller.items[index]);
  }
}
