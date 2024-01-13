import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram/imagepath.dart';
import 'package:get/get.dart';

class SearchingPage extends StatelessWidget {
  const SearchingPage({super.key});

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
        title: Container(
          margin: EdgeInsets.only(right: 20),
          // padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color(0xffefefef),
          ),
          child: TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              border: InputBorder.none,
              hintText: '검색',
              isDense: true,
            )
          ),
        ),
        titleSpacing: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
