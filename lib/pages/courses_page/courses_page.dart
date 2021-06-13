import 'package:flutter/material.dart';
import 'package:testap/controllers/courses_controller.dart';

import 'package:testap/utils/fetchable_list/widget.dart';

import 'course_widget.dart';

class CoursesPage extends FetchableList<CoursesController> {

  @override
  Widget itemBuilder(BuildContext buildContext, int idx) {
    return CourseWidget(course: controller.items[idx]);
  }
}
