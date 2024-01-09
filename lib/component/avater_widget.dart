import 'package:flutter/material.dart';

enum AvatarTypeEnum {
  TYPE1,
  TYPE2,
  TYPE3,
}

class AvatarWidget extends StatelessWidget {
  bool? hasStory;
  String thumbPath;
  String? nickName;
  AvatarTypeEnum type;
  double? size;


  AvatarWidget({
    super.key,
      required this.type,
      required this.thumbPath,
      this.hasStory,
      this.nickName,
      this.size}); // AvatarWidget({

  @override
  Widget build(BuildContext context) {
    switch(type) {
      case AvatarTypeEnum.TYPE1:
        return type1Widget();
      case AvatarTypeEnum.TYPE2:
        return type2Widget();
      case AvatarTypeEnum.TYPE3:
        return type3Widget();
    }
  }

  Widget type1Widget() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.purple,
            Colors.orange,
          ]
        )
      ),
    );
  }

  Widget type2Widget() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.purple,
                Colors.orange,
              ]
          )
      ),
    );
  }

  Widget type3Widget() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.purple,
                Colors.orange,
              ]
          )
      ),
    );
  }
}
