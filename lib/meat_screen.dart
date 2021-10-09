import 'package:demo/item_model.dart';
import 'package:flutter/material.dart';
import 'item_model.dart';

class MeatScreen extends StatelessWidget {
  
  static const String pageID = 'meat_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ItemModel(),
      ),
    );
  }
}