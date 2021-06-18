import 'package:get/get.dart';

abstract class Field<T> {
  Field(
    this.name, {
    this.validators,
  });

  final errorText = RxString();
  final String name;
  final List<Function> validators;

  T get value;

  void removeErrorText() => errorText.value = null;

  void setErrorText(String msg) => errorText.value = msg;

  bool validate() {
    if (errorText.value != null) return false;
    if (validators == null || validators.length == 0) return true;
    for (var validator in validators) {
      var res = validator(value);
      if (res != null) {
        errorText.value = res;
        return false;
      }
    }
    return true;
  }
}
