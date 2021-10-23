// ignore_for_file: file_names, prefer_const_constructors

import 'package:demo/UI_kit/login_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../Firebase/login.dart';
import '/screens/menu_screen.dart';


class LoginScreen extends StatelessWidget {
  static const String pageID = 'login_screen';
  bool navEligible = false;
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration: InputDecoration(hintText: 'Enter your Email'),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration: InputDecoration(hintText: 'Enter your Password'),
            ),
            SizedBox(
              height: 24.0,
            ),
            LoginButton(
              colour: Colors.teal,
              buttonTitle: 'Log In',
              buttonFunctionality: () async {
                Login login = Login(email: email, password: password);
                navEligible = await login.loginViaMail();
                navEligible ? Navigator.pushNamed(context, MenuScreen.pageID) : print('Invalid Credentials');
              },
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
