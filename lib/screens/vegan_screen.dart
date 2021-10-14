import 'package:flutter/material.dart';
import 'package:demo/functionality/menu_listView.dart';
import '../crossAppUtilities/menu_files.dart';

class VeganScreen extends StatelessWidget {
  
  static const String pageID = 'vegan_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: menuListView(Vegan)
    );
  }
}