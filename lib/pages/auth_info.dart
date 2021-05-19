import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AuthInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        title: Text(
          'معلومات تسجيل الدخول',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontFamily: 'kofi',
            fontSize: 15.0.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                border: InputBorder.none,
                fillColor: Colors.white,
                labelText: 'الايميل',
                labelStyle: TextStyle(
                  fontFamily: 'kofi',
                ),
                prefixIcon: Icon(Icons.mail_outline_rounded),
              ),
            ),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                filled: true,
                border: InputBorder.none,
                fillColor: Colors.white,
                labelText: 'اسم المستخدم',
                labelStyle: TextStyle(
                  fontFamily: 'kofi',
                ),
                prefixIcon: Icon(Icons.alternate_email_sharp),
              ),
            ),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
                labelText: 'كلمة السر',
                labelStyle: TextStyle(
                  fontFamily: 'kofi',
                ),
                prefixIcon: Icon(Icons.remove_red_eye_outlined),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Container(
                width: 100.0.w,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(elevation: MaterialStateProperty.all(1)),
                  onPressed: () {},
                  child: Text(
                    'حفظ',
                    style: TextStyle(
                      fontFamily: 'kofi',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
