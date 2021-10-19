import 'package:demo/providers/information.dart';
import 'package:demo/screens/recipes_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
              builder: (context) => RecipesList(
                menuNum: (i + 1),
                menuPath: menuPaths[i],
              ),
            ),
          );
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
