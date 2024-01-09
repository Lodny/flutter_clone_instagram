import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram/imagepath.dart';
import 'package:get/get.dart';

import 'controller/bottom_nav_controller.dart';

class App extends GetView<BottomNavController> {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) {
        print('didPop:' + didPop.toString());
        if (didPop) {
          return;
        }

        int index = controller.back();
        if (index >= 0)
          controller.setBottomNavIndexWithoutHistory(index);
        else
          _showBackDialog(context);
      },
      child: Scaffold(
        appBar: AppBar(),
        body: IndexedStack(
          index: controller.bottomNavIndex.value,
          children: [
            Container(child: Center(child: Text('Home'),),),
            Container(child: Center(child: Text('Search'),),),
            Container(child: Center(child: Text('Upload'),),),
            Container(child: Center(child: Text('Activity'),),),
            Container(child: Center(child: Text('MyPage'),),),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: controller.bottomNavIndex.value,
          onTap: (index) {
            controller.setBottomNavIndex(index);
          },
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(IconsPath.homeOff,),
              activeIcon: Image.asset(IconsPath.homeOn),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(IconsPath.searchOff,),
              activeIcon: Image.asset(IconsPath.searchOn),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(IconsPath.uploadIcon,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(IconsPath.activeOff,),
              activeIcon: Image.asset(IconsPath.activeOn),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
              label: 'Home',
            )
          ],
        ),
      ),
    ));
  }

  void _showBackDialog(context) {
    showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text(
              'Are you sure you want to leave this page?',
            ),
            actions: <Widget>[
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('Nevermind'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: Theme.of(context).textTheme.labelLarge,
                ),
                child: const Text('Leave'),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}
