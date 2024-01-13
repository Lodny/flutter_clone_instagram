import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _appBar(),
            // _body()
          ],
        ),
      ),
    );
  }

  Widget _appBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xffefefef),
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Icon(Icons.search),
                  Text(
                    '검색',
                    style: TextStyle(fontSize: 15, color: Color(0xff838383)),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.location_pin),
          ),
        ],
      ),
    );
  }
}
