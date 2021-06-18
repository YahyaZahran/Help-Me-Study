import 'package:get/get.dart';
import 'package:testap/controllers/sign_up_page_controller.dart';

import 'form_handler/text_field_handler.dart';

class Validators {
  static String required(Object val) {
    if (val == null || (val is String && val.length == 0))
      return 'هذا الحقل مطلوب';
    return null;
  }

  static Function maxLength({int length}) => (String val) {
        if (val.length > length) return 'يجب ان لا يتجاوز طول الحقل $length';
        return null;
      };

  static String syrianPhoneNumber(String val) {
    var regex = RegExp(r'09[389456]\d{7}');
    // 093 4 623 069
    if (val.length != 10 || !regex.hasMatch(val))
      return 'الرجاء ادخال رقم جوال صحيح';
    return null;
  }

  static String email(String val) {
    RegExp email = RegExp(
        r"^((([a-z]|\d|[!#\$%&'*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$");
    if (!email.hasMatch(val)) return 'الرجاء ادخال ايميل صحيح';
    return null;
  }

  static String passowrdMatch(String val) {
    if (Get.find<SignUpPageController>()
            .form
            .getFiled<TextFiledHandler>(SignUpPageController.PASSWORD)
            .value !=
        val) return 'كلمة السر غير متطابقة مع الاصلية';
    return null;
  }
}

