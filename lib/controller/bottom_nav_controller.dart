import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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

  void willPopAction() {
    showDialog<void>(
        context: Get.context!,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('시스템'),
            content: const Text(
              '종료 하시겠습니까?',
            ),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('취소'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('확인'),
                onPressed: () {
                  exit(0);
                  // Navigator.pop(context);
                  // Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }

}
