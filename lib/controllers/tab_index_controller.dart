import 'package:get/get.dart';

class TabIndexController extends GetxController {
  RxInt _tabIndex = 0.obs;

  int getTabIndex() => _tabIndex.value;

  set setTabIndex(int index) => _tabIndex.value = index;
}
