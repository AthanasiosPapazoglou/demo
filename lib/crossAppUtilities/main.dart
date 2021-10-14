
import 'package:demo/screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../screens/menu_screen.dart';
import 'package:demo/screens/meat_screen.dart';
import 'package:demo/screens/vegan_screen.dart';
import 'package:demo/screens/vegeterian_screen.dart';


import 'package:firebase_core/firebase_core.dart';



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
      initialRoute: LoginScreen.pageID, 
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



//We need to implement proper use of providers or steambuild to fix the state and async issue
