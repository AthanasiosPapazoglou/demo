import 'package:demo/Widgets/menu_buttons.dart';
import 'package:flutter/material.dart';
import 'package:demo/firebase/login.dart';
import 'login_screen.dart';
import 'package:demo/Widgets/menu_buttons.dart';

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
            MenuButtonsColumn(),
            FloatingActionButton(
              onPressed: () {
                Login connectionState = Login.disconnect();
                connectionState.doLogout();
                Navigator.pushNamed(context, LoginScreen.pageID);
              },
            )
          ],
        ),
      ),
    );
  }
}

//"menu_options/menu_option_1/title"