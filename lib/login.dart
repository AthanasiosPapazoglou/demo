import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';


final auth = FirebaseAuth.instance;

class Login {
  final email = "candidate@smartupweb.com";
  final pass = "smartup";

  Login();

  Future doLogin() async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );
      print(auth.currentUser?.uid);
      return (auth.currentUser);
      //return "Signed in";
    } on FirebaseAuthException catch (e) {
      print("Error");
    }
  }
}

//"candidate@smartupweb.com"
//"smartup"