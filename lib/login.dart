import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';


final auth = FirebaseAuth.instance;

class Login {
  
  static bool isLoggedIn = false;
  final String email;
  final String password;

  Login({required this.email, required this.password});

  Future loginViaMail() async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      isLoggedIn = true;
      print(auth.currentUser?.uid);
      return isLoggedIn;

    } on FirebaseAuthException catch (e) {
      print(e);
      return false;
    }
  }
}

//Future loginViaToken

//"candidate@smartupweb.com"
//"smartup"