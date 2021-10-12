import 'package:demo/item_screen.dart';
import 'package:flutter/material.dart';
import '../homeScreen/menu_screen.dart';
import 'package:demo/meat_screen.dart';
import 'package:demo/vegan_screen.dart';
import 'package:demo/vegeterian_screen.dart';
import 'package:demo/item_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<String> getTextInformation(String databasePath) async {
  FirebaseDatabase database = FirebaseDatabase.instance;
  DatabaseReference _ref =
      database.reference().child(databasePath);
  String result = await _ref.once().then((value) => value.value);
  print(result);
  return result;
}

//"menu_options/menu_option_1/title"

Future<void> main() async{ 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print('Firebase and binding initialised');
  runApp(DemoApp());
}

class DemoApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MenuScreen.pageID, 
      routes: {
        MenuScreen.pageID: (context) => MenuScreen(),
        MeatScreen.pageID: (context) => MeatScreen(),
        VegeterianScreen.pageID: (context) => VegeterianScreen(),
        VeganScreen.pageID: (context) => VeganScreen(),
      },
    );
  }
}



//Einai real time opote me ta paths (eite katefthian eite mesa apo katalilo url pou exei ws paidi to route)
//prepei authenticate ton user, ta credentials