import 'package:demo/item_model.dart';
import 'package:demo/menu_listView.dart';
import 'package:flutter/material.dart';
import 'item_model.dart';
import 'homeScreen/menu_screen.dart';

class MeatScreen extends StatelessWidget {
  
  static const String pageID = 'meat_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: menuListView(Meat)
    );
  }
}