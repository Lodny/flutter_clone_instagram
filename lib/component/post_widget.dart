import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram/component/avater_widget.dart';
import 'package:flutter_clone_instagram/imagepath.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          _header(),
          SizedBox(height: 15,),
          _image(),
          SizedBox(height: 15,),
          _infoCount(),
          // _infoDesc(),
          // _replyTextBtn(),
          // _dataAgo(),
        ],
      )
    );
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AvatarWidget(
            type: AvatarTypeEnum.TYPE3,
            nickName: 'Juice',
            size: 40,
            thumbPath: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCR_l8xKBB1Agql-QYEn9IrGvTfA-IBPw29nzmJJJ52D79F5pcVWBKtKE38MvmWNjVxUQ&usqp=CAU',
          ),
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(IconsPath.postMoreIcon, width: 20),
            ),
          )
        ],
      ),
    );
  }

  Widget _image() {
    return CachedNetworkImage(
        imageUrl: 'https://starwalk.space/gallery/images/what-is-space/1920x1080.jpg'
    );
  }

  Widget _infoCount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(IconsPath.likeOffIcon, width: 35,),
              SizedBox(width: 15,),
              Image.asset(IconsPath.replyIcon, width: 30,),
              SizedBox(width: 15,),
              Image.asset(IconsPath.directMessage, width: 30,),
            ],
          ),
          Image.asset(IconsPath.bookMarkOffIcon, width: 30,),
        ],
      ),
    );
  }
}
