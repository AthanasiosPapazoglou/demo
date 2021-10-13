import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';


//final auth = FirebaseAuth.instance;

class Login {
  final FirebaseAuth auth;
  final String email;
  final String pass;

  Login({required this.auth ,required this.email, required this.pass});

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