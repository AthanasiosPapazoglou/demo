import 'package:flutter/material.dart';

class VeganScreen extends StatelessWidget {
  
  static const String pageID = 'vegan_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Text(
            'Welcome to VEGAN menu',
            style: TextStyle(fontSize: 50,
            color: Colors.green),),
        ),
      ),
    );
  }
}