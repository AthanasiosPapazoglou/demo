import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:demo/providers/information.dart';
import 'package:demo/login.dart';
import 'login_screen.dart';
import 'package:demo/item.dart';
import 'food_list_screen.dart';

class MenuSelectionScreen extends StatelessWidget {
  static const String pageID = 'menu_screen';
  //final Login login = Login();

  @override
  Widget build(BuildContext context) {
    //print(auth.currentUser?.uid);
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: SafeArea(
        child: Column(
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
            Column(children: menuButtons(context)),
            FloatingActionButton(
              onPressed: () {
                Login connectionState = Login.disconnect();
                connectionState.doLogout();
                Navigator.pushNamed(context, LoginScreen.pageID);
              },
            )
          ],
        ),
      ),
    );
  }
}

List<Widget> menuButtons(BuildContext context) {
  final menusData = Provider.of<Information>(context);
  final menuPaths = menusData.menusPathsList;
  final menusName = menusData.menusList;
  List<Widget> buttons = [];

  for (int i = 0; i < menusName.length; i++) {
    buttons.add(Container(
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(color: Colors.black, width: 0.5),
        ),
      ),
      child: TextButton(
        onPressed: () async {
          await menusData.setItemsMap(menuPaths[i]);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MenuFoodList(
                menuNum: (i + 1),
                menuPath: menuPaths[i],
              ),
            ),
          );
          //print(menuPath s[i]);
        },
        child: SizedBox(
          width: double.infinity,
          child: Text(
            menusName[i],
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    ));
  }
  return buttons;
}

//"menu_options/menu_option_1/title"