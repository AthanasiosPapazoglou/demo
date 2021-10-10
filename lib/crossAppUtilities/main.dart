import 'package:flutter/material.dart';
import '../homeScreen/menu_screen.dart';
import 'package:demo/meat_screen.dart';
import 'package:demo/vegan_screen.dart';
import 'package:demo/vegeterian_screen.dart';

main() => runApp(DemoApp());

class DemoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MenuScreen.pageID, 
      routes: {
        MenuScreen.pageID: (context) => MenuScreen(),
        MeatScreen.pageID: (context) => MeatScreen(),
        VegeterianScreen.pageID: (context) => VegeterianScreen(),
        VeganScreen.pageID: (context) => VeganScreen(), 
      },
    );
  }
}

//Για τις οθονες, ενα listview με παιδια custom widgets οπου εικονα και απο κατω ενα tapable listtile
//Expansion Panel