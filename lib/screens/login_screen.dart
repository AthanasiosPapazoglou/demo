// ignore_for_file: file_names, prefer_const_constructors

import 'package:demo/UIbuilders/login_button.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../login.dart';
import '/screens/menu_screen.dart';
//import 'login_button.dart';
//import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatelessWidget {
  static const String pageID = 'login_screen';
  final auth = FirebaseAuth.instance;
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //body: ModalProgressHUD(
      //inAsyncCall: true,
      // child:
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
                Login login = Login(auth: auth, email: email, pass: password);
                await login.doLogin();
                Navigator.pushNamed(context, MenuScreen.pageID);
              },
            ),
          ],
        ),
      ),
      // ),
    );
  }
}
