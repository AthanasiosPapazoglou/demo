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



//We need to implement proper use of providers or steambuild to fix the state and async issue
