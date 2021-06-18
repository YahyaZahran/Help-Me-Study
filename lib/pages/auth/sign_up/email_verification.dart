import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:testap/pages/auth/sign_in/sign_in.dart';

class EmailVerification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.local_post_office,
              size: 100,
              color: Theme.of(context).primaryColor,
            ),
            Text(
              'تم ارسال بريد يحوي رابط تأكيد الحساب',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0.sp,
                fontFamily: 'kofi',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'يمكنك استخدم حسابك لتسجيل الدخول بعد تأكيد البريد .. اذا لم يصلك البريد اضغط هنا ليتم ارساله مجددا',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 10.0.sp,
                fontFamily: 'kofi',
              ),
            ),
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
                    Get.offAll(() => SignInPage());
                  },
                  child: Text(
                    "دخول",
                    style: TextStyle(
                      fontSize: 16.0.sp,
                      fontFamily: "Kofi",
                      color: Colors.white,
                    ),
                  ),
                ),
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
                  onPressed: () async {},
                  child: Text(
                    "اعد ارسال البريد",
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
    );
  }
}
