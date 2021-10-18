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
  Login.disconnect({this.email='_',this.password='_'});

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

   Future<void> doLogout() async {
    try {
      await auth.signOut();
      isLoggedIn = false;
    } on FirebaseAuthException catch (e) {
      return;
    }
  }
}






//"candidate@smartupweb.com"
//"smartup"