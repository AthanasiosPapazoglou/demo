
import 'package:flutter/material.dart';
import 'package:demo/menu_listView.dart';
import 'menu_files.dart';


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