import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:testap/controllers/auth_controller.dart';
import 'package:testap/services/api.dart';
import 'package:testap/utils/dialogs.dart';
import 'package:testap/utils/error.dart';
import 'package:testap/utils/form_handler/field.dart';
import 'package:testap/utils/form_handler/form_handler.dart';
import 'package:testap/utils/form_handler/radio_group_handler.dart';
import 'package:testap/utils/form_handler/text_field_handler.dart';
import 'package:testap/utils/validators.dart';

class SignUpPageController extends GetX {
  final api = Get.find<Api>();
  final AuthController authController = Get.find<AuthController>();

  static const String USERNAME = 'name';
  static const String EMAIL = 'email';
  static const String GENDER = 'gender';
  static const String PHONE = 'phone';
  static const String BIRTH_DATE = 'birth_date';

  static const String PASSWORD = 'password1';
  static const String PASSWORD_CONFIRMATION = 'password2';

  final FormHandler form = FormHandler([
    TextFiledHandler(
      USERNAME,
      validators: [
        Validators.required,
      ],
    ),
    TextFiledHandler(
      BIRTH_DATE,
      validators: [Validators.required],
    ),
    RadioGroupHandler(
      GENDER,
      validators: [Validators.required],
    ),
    TextFiledHandler(
      EMAIL,
      validators: [
        Validators.required,
        Validators.email,
      ],
    ),
    TextFiledHandler(
      PHONE,
      validators: [
        Validators.required,
        Validators.syrianPhoneNumber,
      ],
    ),
    TextFiledHandler(
      PASSWORD,
      validators: [Validators.required],
    ),
    TextFiledHandler(
      PASSWORD_CONFIRMATION,
      validators: [
        Validators.required,
        Validators.passowrdMatch,
      ],
    ),
  ]);

  final PageController pageController = PageController();

  void submit() async {
    var res = form.validate();
    if (!res) {
      jumpToInvalidPage();
      return;
    }

    try {
      Dialogs.pushLoadingDialog(() {});
      await authController.register(
        name: form.getValue(USERNAME),
        email: form.getValue(EMAIL),
        gender: form.getValue<bool>(GENDER),
        password1: form.getValue(PASSWORD),
        password2: form.getValue(PASSWORD_CONFIRMATION),
        birthdate: form.getValue(BIRTH_DATE),
        phoneNumber: form.getValue(PHONE),
      );
      Get.back();
      Get.find<SignUpPageController>().pageController.jumpToPage(2);
    } on ApiFormError catch (e) {
      e.invalidFields.forEach((element) {
        form
            .getFiled<Field>(element.fieldName)
            .setErrorText(element.errorMessages.first);
      });
      Get.back(); // remove loading
      form.validate();
      jumpToInvalidPage();
    } on SocketException {
      Get.back(); // remove the loader
      Dialogs.pushErrorDialog(
          'يبدو انك غير متصل بالانترنت .. تأكد من الاتصال وحاول مجددا');
    }
  }

  void jumpToInvalidPage() {
    print(form.firstInvalidFiled());
    pageController.jumpToPage(pageIdx(form.firstInvalidFiled()));
  }

  int pageIdx(String name) =>
      name == EMAIL || name == PASSWORD || name == PASSWORD_CONFIRMATION
          ? 1
          : 0;
}
