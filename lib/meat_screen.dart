import 'package:flutter/material.dart';

class MeatScreen extends StatelessWidget {
  
  static const String pageID = 'meat_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Text(
            'Welcome to meat menu',
            style: TextStyle(fontSize: 50,
            color: Colors.green),),
        ),
      ),
    );
  }
}