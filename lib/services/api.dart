import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:testap/utils/error.dart';

class ApiConstants {
  ApiConstants._();
  static final String baseUrl = 'http://omar94.pythonanywhere.com';
  static String _makEndPoint(String end) => '$baseUrl/$end';

  static String registerationEndPoint = _makEndPoint('auth/registration/');
}

class Api extends GetxService {
  final Dio dio = Dio();

  Future<String> register({
    @required String name,
    @required String email,
    @required bool gender,
    @required String password1,
    @required String password2,
    String phoneNumber,
    String birthdate,
    String address,
  }) async {
    try {
      await dio.post(
        ApiConstants.registerationEndPoint,
        data: {
          'name': name,
          'email': email,
          'gender': gender ? 'M' : 'F',
          'password1': password1,
          "password2": password2,
          'phone': phoneNumber,
          'birth_date': birthdate.toString(),
          // 'address': address
        },
      );
    } on DioError catch (e) {
      if(e.type == DioErrorType.response && e.response.statusCode == 400)
      {
        var error = ApiFormError.fromJson(e.response.data);
        throw error;
      }
      if(e.type == DioErrorType.other)
      {
        throw e.error ;
      }
    }

    return 'Mail Sent';
  }
}
