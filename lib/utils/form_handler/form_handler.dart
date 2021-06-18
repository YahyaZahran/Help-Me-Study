
import 'field.dart';

class FormHandler {
  FormHandler(this.fileds);

  final List<Field> fileds;

  T getValue<T>(String name) => getFiled(name).value as T;

  T getFiled<T>(String name) =>
      fileds.firstWhere((element) => element.name == name) as T;

  bool validate() {
    bool ret = true;
    for (var field in fileds) {
      ret &= field.validate();
    }
    return ret;
  }

  String firstInvalidFiled() {
    for (var field in fileds) {
      if (!field.validate()) return field.name;
    }
    return null;
  }
}
