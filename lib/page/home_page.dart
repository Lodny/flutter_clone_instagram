import 'package:flutter/material.dart';
import 'package:flutter_clone_instagram/component/avater_widget.dart';
import 'package:flutter_clone_instagram/imagepath.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          IconsPath.logo,
          width: 100,
        ),
        actions: [
          GestureDetector(
            onTap: (){},
            child: Image.asset(
              IconsPath.directMessage,
              width: 20,
            ),
          ),
          SizedBox(width: 10,)
        ],
      ),
      body: ListView(
        children: [
          _storyBoardList(),
          _postList(),
        ],
      ),
    );
  }

  Widget _storyBoardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            100,
                (index) => AvatarWidget(
                  type: AvatarTypeEnum.TYPE1,
                  thumbPath: 'https://images.unsplash.com/photo-1528301721190-186c3bd85418?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D',
                )
            // Container(
                //   width: 60,
                //   height: 60,
                //   decoration: BoxDecoration(
                //     shape: BoxShape.circle,
                //     color: Colors.grey,
                //   ),
                // )
        ),
      ),
    );
  }

  Widget _postList() {
    return Container(decoration: BoxDecoration(
      shape: BoxShape.circle, color: Colors.grey,),);
  }
}
