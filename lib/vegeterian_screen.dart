import 'package:flutter/material.dart';
import 'package:demo/menu_listView.dart';
import 'menu_files.dart';
class VegeterianScreen extends StatelessWidget {
  
  static const String pageID = 'vegeterian_screen';

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: menuListView(Vegeterian)
    );
  }
}