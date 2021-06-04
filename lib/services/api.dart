import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiConstants {
  ApiConstants._();
  static final String baseUrl = 'http://omar94.pythonanywhere.com';
  static String _makEndPoint(String end) => '$baseUrl/$end';

  static String registerationEndPoint = _makEndPoint('auth/registration/');
}

class Api {
  final Dio dio = Dio();

  Future<String> register(
      {@required String userName,
      @required DateTime birthday,
      @required bool gender,
      @required String email,
      @required String phoneNumber,
      @required String password,
      @required String passwordConfirmation}) async {
    try {
      var response = await dio.post(
        ApiConstants.registerationEndPoint,
        data: {
          "username": userName,
          "email": email,
          "password1": password,
          "password2": passwordConfirmation
        },
      );
      print(response.data);
    } on DioError catch (e) {
      print(e.response.data);
    }

    return '';
  }
}
