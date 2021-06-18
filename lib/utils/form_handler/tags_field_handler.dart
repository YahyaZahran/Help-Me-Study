import 'package:flutter/material.dart';
import 'package:testap/utils/form_handler/field.dart';
import 'package:get/get.dart';
class TagsFieldHandler extends Field<List<String>>
{
  TagsFieldHandler(String name) : super(name);

  final chips = <String>[].obs;
  final fieldController = TextEditingController();

  @override
  List<String> get value => chips;

  void add() {
    chips.add(fieldController.text);
    fieldController.clear();
  }

  void delete(String chip) {
    chips.remove(chip);
  }
}