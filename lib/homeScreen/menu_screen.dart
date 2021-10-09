import 'package:flutter/material.dart';
import '../crossAppUtilities/constants.dart';
import 'menu_select_button.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[100],
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                bottom: 110,
                top: 60.0,
                left: 60.0,
                right: 60,
              ),
              child: Image(
                image: AssetImage('lib/homeScreen/images/logo.png'),
              ),
            ),
            MenuSelectionButton(buttonText: 'Menu 1'),
            MenuSelectionButton(buttonText: 'Menu 2'),
            MenuSelectionButton(buttonText: 'Menu 3'),
          ],
        ),
      ),
    );
  }
}


