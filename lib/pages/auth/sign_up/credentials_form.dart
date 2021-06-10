import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:testap/controllers/sign_up_page_controller.dart';
import 'package:testap/utils/form_handler/text_field_handler.dart';

class CredentialsForm extends StatelessWidget {
  final controller = Get.find<SignUpPageController>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'ادخل معلومات تسجيل الدخول',
                    style: TextStyle(
                      fontFamily: 'cairo',
                      fontSize: 20.0.sp,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'هذه المعلومات خاصة بك لن يراها احد .... لكن تأكد من ادخال بريد صحيح لتستلم رسالة التاكيد عليه',
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontFamily: 'cairo',
                      fontSize: 13.0.sp,
                    ),
                  ),
                ],
              ),
            ),
            TextFormField(
              controller: controller.form
                  .getFiled<TextFiledHandler>(SignUpPageController.EMAIL)
                  .controller,
              onChanged: (_) => controller.form
                  .getFiled<TextFiledHandler>(SignUpPageController.EMAIL)
                  .removeErrorText(),
              keyboardType: TextInputType.emailAddress,
              textDirection: TextDirection.ltr,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.alternate_email),
                filled: true,
                fillColor: Colors.white,
                errorText: controller.form
                    .getFiled<TextFiledHandler>(SignUpPageController.EMAIL)
                    .errorText
                    .value,
                hintText: 'البريد الالكتروني',
                hintStyle: TextStyle(
                  fontSize: 15.0.sp,
                  fontFamily: "Kofi",
                ),
              ),
            ),
            SizedBox(height: 5),
            TextFormField(
              controller: controller.form
                  .getFiled<TextFiledHandler>(SignUpPageController.PASSWORD)
                  .controller,
              onChanged: (_) => controller.form
                  .getFiled<TextFiledHandler>(SignUpPageController.PASSWORD)
                  .removeErrorText(),
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                errorText: controller.form
                    .getFiled<TextFiledHandler>(SignUpPageController.PASSWORD)
                    .errorText
                    .value,
                prefixIcon: Icon(Icons.vpn_key_outlined),
                filled: true,
                fillColor: Colors.white,
                hintText: 'كلمة السر',
                hintStyle: TextStyle(
                  fontSize: 15.0.sp,
                  fontFamily: "Kofi",
                ),
              ),
            ),
            SizedBox(height: 5),
            TextFormField(
              controller: controller.form
                  .getFiled<TextFiledHandler>(
                      SignUpPageController.PASSWORD_CONFIRMATION)
                  .controller,
              onChanged: (_) => controller.form
                  .getFiled<TextFiledHandler>(
                      SignUpPageController.PASSWORD_CONFIRMATION)
                  .removeErrorText(),
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.vpn_key_outlined),
                errorText: controller.form
                    .getFiled<TextFiledHandler>(
                        SignUpPageController.PASSWORD_CONFIRMATION)
                    .errorText
                    .value,
                filled: true,
                fillColor: Colors.white,
                hintText: 'تاكيد كلمة السر',
                hintStyle: TextStyle(
                  fontSize: 15.0.sp,
                  fontFamily: "Kofi",
                ),
              ),
            ),
            SizedBox(height: 5),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: 85.0.w,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    controller.submit();
                  },
                  child: Text(
                    'انشاء',
                    style: TextStyle(
                      fontSize: 16.0.sp,
                      fontFamily: "kofi",
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
