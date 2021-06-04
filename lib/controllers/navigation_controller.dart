import 'package:get/get.dart';

class NavigationController extends GetxController 
{
  final int tabsCount;

  var _activeIdx = 0.obs;

    NavigationController(this.tabsCount);


  int get currentIdx => _activeIdx.value;

  bool get inHome => _activeIdx.value == 0;
  void setPage(int idx){
    assert (idx < tabsCount);
    _activeIdx.value = idx;
  }
}