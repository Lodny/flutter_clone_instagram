import 'package:get/get.dart';

enum BottomNavEnum {
  Home,
  Search,
  Upload,
  Activity,
  MyPage,
}

class BottomNavController extends GetxService {
  RxInt bottomNavIndex = 0.obs;

  void setBottomNavIndex(int index) {
    var nav = BottomNavEnum.values[index];
    switch(nav) {
      case BottomNavEnum.Upload:
        break;

      case BottomNavEnum.Home:
      case BottomNavEnum.Search:
      case BottomNavEnum.Activity:
      case BottomNavEnum.MyPage:
        bottomNavIndex(index);
        break;
    }
  }
}
