import 'dart:io';

import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:testap/controllers/auth_controller.dart';
import 'package:testap/pages/home.dart';
import 'package:testap/services/api.dart';
import 'package:testap/utils/dialogs.dart';
import 'package:testap/utils/error.dart';
import 'package:testap/utils/form_handler/form_handler.dart';
import 'package:testap/utils/form_handler/text_field_handler.dart';
import 'package:testap/utils/validators.dart';

class SignInPageController extends GetxController {
  final api = Get.find<Api>();
  final FormHandler form = FormHandler([
    TextFiledHandler(
      'email',
      validators: [
        Validators.required,
        Validators.email,
      ],
    ),
    TextFiledHandler(
      'password',
      validators: [
        Validators.required,
      ],
    ),
  ]);

  Future<void> submit() async {
    try {
      if (!form.validate()) return;
      Dialogs.pushLoadingDialog(() {});
      var token = await api.login(
        email: form.getValue('email'),
        password: form.getValue('password'),
      );
      Get.find<AuthController>().token = token;
      var user = await api.getAuthenticatedUser();
      Get.find<AuthController>().authenticatedUser = user;
      Get.back(); // remove loading
      Get.offAll(() => Home());
    } on ApiError catch (e) {
      Get.back(); // remove loading
      Dialogs.pushErrorDialog(e.msg);
    } on SocketException {
      Get.back(); // remove the loader
      Dialogs.pushErrorDialog(
          'يبدو انك غير متصل بالانترنت .. تأكد من الاتصال وحاول مجددا');
    }
  }
}
