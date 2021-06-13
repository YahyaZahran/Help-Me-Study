import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:testap/controllers/sign_in_page_controller.dart';
import 'package:testap/controllers/sign_up_page_controller.dart';
import 'package:testap/deprecated_pages/pages/sign_in_page.dart';
import 'package:testap/pages/auth/sign_up/sign_up_page.dart';
import 'package:testap/utils/form_handler/text_field_handler.dart';

import '../../home.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignInPageController());
    double wd = MediaQuery.of(context).size.width;
    double he = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xffF0F2F5)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListView(
            primary: false,
            children: [
              Container(
                width: 100.0.w,
                height: 35.0.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/img2.png"),
                  ),
                ),
              ),
              SizedBox(height: he / 40),
              Center(
                child: SizedBox(
                  width: 85.0.w,
                  // height: 8.0.h,
                  child: Obx(
                    () => TextField(
                      onChanged: (_)=>controller.form
                          .getFiled<TextFiledHandler>('email').removeErrorText(),
                      controller: controller.form
                          .getFiled<TextFiledHandler>('email')
                          .controller,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        errorText: controller.form
                            .getFiled<TextFiledHandler>('email')
                            .errorText
                            .value,
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        hintText: "البريد الإلكتروني",
                        hintStyle: TextStyle(
                            fontSize: 15.0.sp, height: 0.5, fontFamily: "Kofi"),
                        prefixIcon: Icon(
                          EvaIcons.emailOutline,
                          size: 25.0.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: he / 18),
              Center(
                child: SizedBox(
                  width: 85.0.w,
                  // height: 8.0.h,
                  child: Obx(
                    () => TextField(
                      onChanged: (_)=>controller.form
                          .getFiled<TextFiledHandler>('password').removeErrorText(),
                      controller: controller.form
                          .getFiled<TextFiledHandler>('password')
                          .controller,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        errorText: controller.form
                            .getFiled<TextFiledHandler>('password')
                            .errorText
                            .value,
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        hintText: "كلمة السر",
                        hintStyle: TextStyle(
                            fontSize: 15.0.sp, height: 0.5, fontFamily: "Kofi"),
                        prefixIcon: Icon(
                          EvaIcons.eyeOff,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Container(
                  width: 85.0.w,
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            // TODO: Forget password Function
                          },
                          child: Text(
                            "هل نسيت كلمة السر؟",
                            style: TextStyle(
                              fontSize: wd / 23,
                              fontFamily: "Roboto",
                              color: Colors.black54,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 3.0.h),
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
                        "دخول",
                        style: TextStyle(
                          fontSize: 16.0.sp,
                          fontFamily: "Kofi",
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  width: 85.0.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Theme.of(context).primaryColor,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () async {
                      Get.to(() => SignUpPage());
                    },
                    child: Text(
                      "التسجيل",
                      style: TextStyle(
                        fontSize: 16.0.sp,
                        fontFamily: "Kofi",
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
