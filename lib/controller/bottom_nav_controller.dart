import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../page/upload_page.dart';

enum BottomNavEnum {
  Home,
  Search,
  Upload,
  Activity,
  MyPage,
}

class BottomNavController extends GetxService {
  RxInt bottomNavIndex = 0.obs;
  List<int> history = [];
  GlobalKey<NavigatorState> searchPageNavigationKey = GlobalKey<NavigatorState>();


  void setBottomNavIndex(int index, {bool withoutHistory = false}) {
    if (bottomNavIndex == index) return;

    if (! withoutHistory) {
      history.remove(bottomNavIndex.value);
      history.add(bottomNavIndex.value);
    }
    print('set() : ' + history.toString());

    switch(BottomNavEnum.values[index]) {
      case BottomNavEnum.Upload:
        Get.to(UploadPage());
        break;

      case BottomNavEnum.Home:
      case BottomNavEnum.Search:
      case BottomNavEnum.Activity:
      case BottomNavEnum.MyPage:
        bottomNavIndex(index);
        break;
    }
  }

  void setBottomNavIndexWithoutHistory(int index) {
    setBottomNavIndex(index, withoutHistory: true);
  }

  int back() {
    if (history.isEmpty)
      return -1;

    print('back() : ' + history.toString());

    return history.removeLast();
  }
}
