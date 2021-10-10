import 'package:flutter/material.dart';

class SelectedItemPage extends StatelessWidget {
  final String photoID;
  final String foodName;

  SelectedItemPage({
    required this.photoID,
    required this.foodName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 15),
              child: Image(
                image: AssetImage(photoID),
              ),
            ),
            Text(
              foodName,
              style: TextStyle(fontSize: 20),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Image(
                        image: AssetImage('images/web_Icon.png'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 30),
                      child: Image(
                        image: AssetImage('images/ty_Icon.png'),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Text(
                    'Something Long enough so that we definetely make sure that this text is scrollable and that our UI Design is implemented correctly.',
                   style: TextStyle(fontSize: 40),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
