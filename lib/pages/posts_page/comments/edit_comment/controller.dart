import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testap/controllers/comments_controller.dart';
import 'package:testap/controllers/posts_controller.dart';
import 'package:testap/models/comment.dart';
import 'package:testap/services/api.dart';
import 'package:testap/utils/dialogs.dart';

class EditCommentController extends GetxController {
  final Comment comment;

  EditCommentController(this.comment);

  final loading = false.obs;
  final fieldController = TextEditingController();
  final api = Get.find<Api>();

  @override
  void onInit() {
    fieldController.text = comment.text;
    super.onInit();
  }

  void updateComment() async {
    try {
      loading.value = true;
      var newComment = await api.updateComment(
        comment.postId,
        comment.id,
        fieldController.text,
      );

      Get.find<CommentsController>().updateComment(newComment);
      loading.value = false;
      Get.back();
      Get.delete<EditCommentController>();
    } catch (e) {
      loading.value = false;
      Dialogs.pushErrorDialog('حدث خطأ اثناء تعديل التعليق');
    }
  }
}
