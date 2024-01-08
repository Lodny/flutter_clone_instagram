import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram/imagepath.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) {
        print('didPop:' + didPop.toString());
        if (didPop) {
          return;
        }
        _showBackDialog(context);
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: 0,
          onTap: (index) {
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
    );
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
