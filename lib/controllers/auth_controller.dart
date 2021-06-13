import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:testap/models/user.dart';
import 'package:testap/services/api.dart';

class AuthController extends GetxController {
  final api = Get.find<Api>();

  final _authToken = RxString();
  final _authenticatedUser = Rx<User>();

  set token(String token) => _authToken.value = token;

  String get token => _authToken.value;

  User get authenticatedUser => _authenticatedUser.value;

  set authenticatedUser(User user) => _authenticatedUser.value = user;

  bool get isAuthed => _authToken.value != null;
}
