import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:testap/models/course.dart';

import 'courses_page/course_widget.dart';

class MyCourses extends StatelessWidget {
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
          'دوراتي',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontFamily: 'kofi',
            fontSize: 15.0.sp,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (_, __) => CourseWidget(
          course: Course(),
        ),
        itemCount: 10,
      ),
    );
  }
}
