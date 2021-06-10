import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:testap/controllers/sign_up_page_controller.dart';
import 'package:testap/services/api.dart';
import 'package:testap/utils/dialogs.dart';
import 'package:testap/utils/form_handler/field.dart';
import '../utils/error.dart';

class AuthController extends GetxController {
  final _authToken = RxString();
  final api = Get.find<Api>();

  Future<void> register({
    @required String name,
    @required String email,
    @required bool gender,
    @required String password1,
    @required String password2,
    String phoneNumber,
    String birthdate,
    String address,
  }) async {
    var res = await api.register(
      name: name,
      email: email,
      gender: gender,
      password1: password1,
      password2: password2,
      phoneNumber: phoneNumber,
      birthdate: birthdate,
      address: address,
    );
  }

  void login() {}
  void logout() {}
}
