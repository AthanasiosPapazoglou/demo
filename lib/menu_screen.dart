import 'package:flutter/material.dart';
import 'menu_select_button.dart';
import 'package:demo/meat_screen.dart';
import 'package:demo/vegeterian_screen.dart';
import 'package:demo/vegan_screen.dart';

class MenuScreen extends StatelessWidget {

  static const String pageID = 'menu_screen';
  //final Login login = Login();

  @override
  Widget build(BuildContext context) {
    //print(auth.currentUser?.uid);
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                bottom: 95,
                top: 80.0,
                left: 60.0,
                right: 60,
              ),
              child: Image(
                image: AssetImage('images/logo.png'),
              ),
            ),
            MenuSelectionButton(
              buttonText: 'Meat Based Menu',
              providedIcon: Icons.fastfood_rounded,
              iconColor: Colors.brown,
              cardColor: Colors.brown.shade100,
              pageID: MeatScreen.pageID,
            ),
            MenuSelectionButton(
              buttonText: 'Vegeterian Menu ',
              providedIcon: Icons.favorite_rounded,
              iconColor: Colors.red,
              cardColor: Colors.red.shade100,
              pageID: VegeterianScreen.pageID,
            ),
            MenuSelectionButton(
              buttonText: 'Vegan Menu ',
              providedIcon: Icons.local_florist_outlined,
              iconColor: Colors.green,
              cardColor: Colors.green.shade100,
              pageID: VeganScreen.pageID,
            ),
          ],
        ),
      ),
    );
  }
}
