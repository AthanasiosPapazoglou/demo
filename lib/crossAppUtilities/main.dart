
import 'package:demo/screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../screens/menu_screen.dart';
import 'package:demo/screens/meat_screen.dart';
import 'package:demo/screens/vegan_screen.dart';
import 'package:demo/screens/vegeterian_screen.dart';
import 'package:demo/login.dart';


import 'package:firebase_core/firebase_core.dart';

//Main Initialises Binding and Firebase Connection
Future<void> main() async{ 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print('Firebase and binding initialised');
  print(auth.currentUser?.uid);
  runApp(DemoApp());
}

//We are using Navigation Routes in this App
class DemoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: launchStateScreen(context), 
      routes: {
        LoginScreen.pageID: (context) => LoginScreen(),
        MenuScreen.pageID: (context) => MenuScreen(),
        MeatScreen.pageID: (context) => MeatScreen(),
        VegeterianScreen.pageID: (context) => VegeterianScreen(),
        VeganScreen.pageID: (context) => VeganScreen(),
      },
    );
  }
}

//This function returns the launch screen ID based on weather or not a valid cached connection token is establishing a connection with Firebase RTDB 
String launchStateScreen (BuildContext context) {
  if (auth.currentUser?.uid == null) {
    return LoginScreen.pageID;
  } else {
    return MenuScreen.pageID;
  }
}


