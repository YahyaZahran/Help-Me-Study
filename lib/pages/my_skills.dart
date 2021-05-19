import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MySkills extends StatelessWidget {
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
          ' مهاراتي',
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
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                        ),
                        child: Icon(
                          Icons.handyman_outlined,
                          size: 18.0.sp,
                        ),
                      ),
                      Text(
                        'الفيزياء الطبية',
                        style: TextStyle(
                          fontFamily: 'kofi',
                          fontSize: 16.0.sp,
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Text(
                    'بعرف ف الفيزياء الطبية معرفة لانهائية واخدت جائزة نوبل ترليون مرة وعملت مليار تجرية',
                    style: TextStyle(
                      fontFamily: 'cairo',
                      fontSize: 12.0.sp,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                        ),
                        child: Icon(
                          Icons.handyman_outlined,
                          color: Colors.grey.shade400,
                          size: 18.0.sp,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          style: TextStyle(
                            fontFamily: 'kofi',
                            fontSize: 14.0.sp,
                          ),
                          decoration: InputDecoration(
                            hintText: 'ضع عنوانا لمهارتك الجديدة',
                            hintStyle: TextStyle(
                              fontFamily: 'kofi',
                              fontSize: 14.0.sp,
                              color: Colors.grey.shade400,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  TextField(
                    style: TextStyle(
                      fontFamily: 'cairo',
                      fontSize: 12.0.sp,
                    ),
                    decoration: InputDecoration(
                      hintText: 'اكتب وصفا مناسبا لمهارتك الجديدة',
                      hintStyle: TextStyle(
                        fontFamily: 'cairo',
                        color: Colors.grey.shade400,
                        fontSize: 12.0.sp,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
