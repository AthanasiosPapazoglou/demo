import 'package:flutter/material.dart';

class VegeterianScreen extends StatelessWidget {
  
  static const String pageID = 'vegeterian_screen';

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Text(
            'Welcome to VEGETERIAN menu',
            style: TextStyle(fontSize: 50,
            color: Colors.green),),
        ),
      ),
    );
  }
}