import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:testap/controllers/posts_controller.dart';
import 'package:testap/services/api.dart';
import 'package:testap/utils/dialogs.dart';
import 'package:testap/utils/form_handler/form_handler.dart';
import 'package:testap/utils/form_handler/tags_field_handler.dart';
import 'package:testap/utils/form_handler/text_field_handler.dart';
import 'package:testap/utils/validators.dart';

class AddPostPageController extends GetxController {
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

  void submit() async {
    try {
      if (!form.validate()) return;

      Dialogs.pushLoadingDialog(() {});

      var post = await api.addPost(
        body: form.getValue<String>('text'),
        tags: form.getValue<List<String>>('tags'),
      );

      Get.find<PostsController>().addPost(post);

      Get.back(); // remove loading bar
      Get.back(); // back to posts page

    } catch (e) {
      print(e);
      if (e is DioError) print(e.response.data);
      Get.back(); // remove loading bar
      Dialogs.pushErrorDialog('حدث خطأ اثناء اضافة المنشور');
    }
  }
}
