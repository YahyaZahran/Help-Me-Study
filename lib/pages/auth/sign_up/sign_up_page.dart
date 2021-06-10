import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:testap/controllers/sign_up_page_controller.dart';
import 'package:testap/pages/auth/sign_up/credentials_form.dart';
import 'package:testap/pages/auth/sign_up/email_verification.dart';
import 'package:testap/pages/auth/sign_up/personal_form.dart';

class SignUpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Get.put(SignUpPageController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'التسجيل',
          style: TextStyle(
            fontFamily: 'kofi',
          ),
        ),
      ),
      backgroundColor: Color(0xffF0F2F5),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: Get.find<SignUpPageController>().pageController,
              children: [
                PersonalForm(),
                CredentialsForm(),
                EmailVerification(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: SmoothPageIndicator(
                controller: Get.find<SignUpPageController>().pageController,
                count: 3,
                effect: JumpingDotEffect(
                  activeDotColor: Theme.of(context).primaryColor,
                  dotColor: Theme.of(context).accentColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
