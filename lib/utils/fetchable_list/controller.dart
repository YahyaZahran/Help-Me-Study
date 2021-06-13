import 'package:get/get.dart';

abstract class FetchableListController<T> extends GetxController {
  final _errorText = RxString();
  final _inErrorState = false.obs;
  final _items = <T>[].obs;
  final _loading = false.obs;


  @override
  void onInit() {
    fetch();
    super.onInit();
  }

  String get errorText => _errorText.value;

  bool get hasError => _inErrorState.value;

  bool get isLoading => _loading.value;

  set loading(bool val) => _loading.value = val;

  List<T> get items => _items;

  Future<List<T>> fetcher();

  void fetch() async {
    try {
      _inErrorState.value = false;
      _loading.value = true;
      var res = await fetcher();
      _loading.value = false;

      _items.addAll(res);
    } catch (e) {
      _loading.value = false;
      _inErrorState.value = true;
      print(e);
      _errorText.value = e.toString();
    }
  }
}
