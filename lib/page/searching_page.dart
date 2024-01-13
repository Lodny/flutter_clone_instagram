import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram/imagepath.dart';
import 'package:get/get.dart';

class SearchingPage extends StatefulWidget {
  const SearchingPage({super.key});

  @override
  State<SearchingPage> createState() => _SearchingPageState();
}

class _SearchingPageState extends State<SearchingPage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(IconsPath.backBtnIcon),
          ),
          onTap: Get.back,
        ),
        titleSpacing: 0,
        title: Container(
          margin: EdgeInsets.only(right: 20),
          // padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color(0xffefefef),
          ),
          child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                    vertical: 5, horizontal: 10),
                border: InputBorder.none,
                hintText: '검색',
                isDense: true,
              )
          ),
        ),
        bottom: _tabMenu(),
      ),
      body: _body(),
    );
  }

  PreferredSize _tabMenu() {
    return PreferredSize(
      preferredSize: Size.fromHeight(AppBar().preferredSize.height),
      child: Container(
        height: AppBar().preferredSize.height,
        width: Size.infinite.width,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: _tabMenuList(),
        ),
      ),
    );
  }

  List<Widget> _tabMenuList() {
    List<String> menuText = ['인기', '계정', '오디오', '태그', '장소'];

    return menuText.map((text) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(
            '인기',
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
        ),
      )
      .toList();
  }

  Widget _body() {
    return Container(
      color: Colors.red,
    );
  }
}
