import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testap/models/post.dart';
import 'package:testap/services/api.dart';
import 'package:testap/utils/dialogs.dart';
import 'package:testap/utils/fetchable_list/controller.dart';

class PostsController extends FetchableListController<Post> {
  final api = Get.find<Api>();

  @override
  Future<List<Post>> fetcher() async {
    var res = await api.getAllPosts();
    return res;
  }

  void modifyCommentsCount(int postId, int change) {
    var idx = items.indexWhere((element) => element.id == postId);
    var newPost = items[idx];
    newPost.commentsCount += change;
    items[idx] = newPost;
  }

  void likePost(int postId) {}

  void addPost(Post post) => items.add(post);

  void deletePost(Post post) async {
    try {
      Dialogs.pushLoadingDialog(() {});
      await api.deletePost(post.id);
      items.remove(post);
      Get.back();
    } catch (e) {
      Get.back();
      Dialogs.pushErrorDialog('حدث خطأ اثناء حذف المنشور');
    }
  }
}
