import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class PersonalInfo extends StatelessWidget {
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
          'معلوماتي الشخصية',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontFamily: 'kofi',
            fontSize: 15.0.sp,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                filled: true,
                border: InputBorder.none,
                fillColor: Colors.white,
                labelText: 'اسمك الاول',
                labelStyle: TextStyle(
                  fontFamily: 'kofi',
                ),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
                labelText: 'اسمك الثاني',
                labelStyle: TextStyle(
                  fontFamily: 'kofi',
                ),
                prefixIcon: Icon(Icons.group),
              ),
            ),
            SizedBox(height: 5),
            DropdownButtonFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
                labelText: 'الجنس',
                labelStyle: TextStyle(
                  fontFamily: 'kofi',
                ),
                prefixIcon: Icon(Icons.anchor_outlined),
              ),
              items: [
                DropdownMenuItem(
                  child: Text('ذكر'),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text('انثى'),
                  value: 2,
                ),
              ],
              onChanged: (va) {},
            ),
            SizedBox(height: 5),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: 'تاريخ الميلاد',
                labelStyle: TextStyle(
                  fontFamily: 'kofi',
                ),
                enabled: false,
                prefixIcon: Icon(Icons.date_range),
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
