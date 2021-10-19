// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SelectedItemPage extends StatelessWidget {
  static const String pageID = 'item_screen';

  final String path;
  final int index;

  SelectedItemPage({required this.path ,required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('sample'),
      // ignore: prefer_const_literals_to_create_immutables
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              // child: Image(
              //   image: AssetImage(photoID),
              // ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                'sample',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 35, left: 15, right: 15),
                        child: Image(
                          width: 40,
                          height: 40,
                          image: AssetImage('images/web_Icon.png'),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 60, left: 15, right: 15),
                        child: Image(
                          width: 40,
                          height: 40,
                          image: AssetImage('images/yt_Icon.png'),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    flex: 3,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(
                        'Something Long enough so that we definetely make sure that this text is scrollable and that our UI Design is implemented correctly.' +
                            'Something Long enough so that we definetely make sure that this text is scrollable and that our UI Design is implemented correctly.' +
                            'Something Long enough so that we definetely make sure that this text is scrollable and that our UI Design is implemented correctly.' +
                            'Something Long enough so that we definetely make sure that this text is scrollable and that our UI Design is implemented correctly.' +
                            'Something Long enough so that we definetely make sure that this text is scrollable and that our UI Design is implemented correctly.' +
                            'Something Long enough so that we definetely make sure that this text is scrollable and that our UI Design is implemented correctly.' +
                            'Something Long enough so that we definetely make sure that this text is scrollable and that our UI Design is implemented correctly.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
