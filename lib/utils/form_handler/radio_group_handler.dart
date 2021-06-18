import 'package:get/get.dart';
import 'package:testap/utils/form_handler/field.dart';

class RadioGroupHandler extends Field<bool> {
  RadioGroupHandler(String name, {List<Function> validators})
      : super(name, validators: validators);

  final flag = RxBool();

  @override
  bool get value => flag.value;

  void setFlag(bool value) {
    removeErrorText();
    flag.value = value;
  }
}