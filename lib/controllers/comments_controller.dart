import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testap/controllers/auth_controller.dart';
import 'package:testap/controllers/posts_controller.dart';
import 'package:testap/models/comment.dart';
import 'package:testap/services/api.dart';
import 'package:testap/utils/dialogs.dart';
import 'package:testap/utils/fetchable_list/controller.dart';

class CommentsController extends FetchableListController<Comment> {
  final api = Get.find<Api>();
  final postId;

  CommentsController(this.postId);
  @override
  Future<List<Comment>> fetcher() async {
    var res = await api.getAllComments(postId);
    return res;
  }

  final scrollController = ScrollController();
  final commentField = TextEditingController();
  final _pushingComment = false.obs;
  bool get isPushing => _pushingComment.value;
  void addComment() async {
    try {
      _pushingComment.value = true;
      var comment = await api.addComment(
        userId: Get.find<AuthController>().authenticatedUser.pk,
        postId: postId,
        text: commentField.text,
      );

      items.add(comment);
      Get.find<PostsController>().modifyCommentsCount(postId, 1);

      commentField.clear();

      await scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration: Duration(milliseconds: 50),
        curve: Curves.bounceIn,
      );
      _pushingComment.value = false;
    } catch (e) {
      _pushingComment.value = false;
      Dialogs.pushErrorDialog('حدث خطأ اثناء اضافة التعليق');
    }
  }

  void deleteComment(Comment comment) async {
    try {
      Dialogs.pushLoadingDialog(() {});
      await api.deleteComment(comment.postId, comment.id);
      items.remove(comment);
      Get.find<PostsController>().modifyCommentsCount(postId, -1);
      Get.back(); // remove loading
    } catch (e) {
      Get.back(); // remove loading
      Dialogs.pushErrorDialog('حدث خطأ اثناء حذف التعليق');
    }
  }

  void updateComment(Comment newComment) {
    var idx = items.indexWhere((element) => element.id == newComment.id);
    items[idx] = newComment;
  }
}
