
import 'package:flutter/material.dart';

import 'field.dart';

class TextFiledHandler extends Field<String> {
  TextFiledHandler(String name, {List<Function> validators})
      : super(name, validators: validators);

  final TextEditingController controller = TextEditingController();

  @override
  String get value => controller.text;
}
