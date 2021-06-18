import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:testap/controllers/posts_controller.dart';
import 'package:testap/models/post.dart';
import 'package:testap/services/api.dart';
import 'package:testap/utils/dialogs.dart';
import 'package:testap/utils/form_handler/form_handler.dart';
import 'package:testap/utils/form_handler/tags_field_handler.dart';
import 'package:testap/utils/form_handler/text_field_handler.dart';
import 'package:testap/utils/validators.dart';

class EditPostPageController extends GetxController {
  EditPostPageController(this.originalPost);

  final api = Get.find<Api>();
  final form = FormHandler(
    [
      TextFiledHandler(
        'text',
        validators: [
          Validators.required,
        ],
      ),
      TagsFieldHandler('tags'),
    ],
  );

  final Post originalPost;

  @override
  void onInit() {
    form.getFiled<TextFiledHandler>('text').controller.text = originalPost.body;
    form.getFiled<TagsFieldHandler>('tags').chips.addAll(originalPost.tags);
    super.onInit();
  }

  void submit() async {
    try {
      if (!form.validate()) return;

      Dialogs.pushLoadingDialog(() {});

      var post = await api.addPost(
        body: form.getValue<String>('text'),
        tags: form.getValue<List<String>>('tags'),
      );

      int idx = Get.find<PostsController>().items.indexOf(originalPost);

      Get.find<PostsController>().items[idx] = post;

      Get.back(); // remove loading bar
      Get.back(); // back to posts page

    } catch (e) {
      print(e);
      if (e is DioError) print(e.response.data);
      Get.back(); // remove loading bar
      Dialogs.pushErrorDialog('حدث خطأ اثناء تعديل المنشور');
    }
  }
}
