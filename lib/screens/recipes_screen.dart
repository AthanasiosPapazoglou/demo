import 'package:demo/providers/information.dart';
import 'package:demo/screens/recipes_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:demo/providers/information.dart';
import 'package:demo/Widgets/recipe_item.dart';

class RecipesList extends StatelessWidget {

  final int menuNum;
  final String menuPath;

  RecipesList({required this.menuNum, required this.menuPath});

  @override
  Widget build(BuildContext context) {
    final menusData = Provider.of<Information>(context);
    final items = menusData.menuAndItemsList[menuPath];
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Menu $menuNum',
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          //backgroundColor: Colors.black45,
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: items!.length,
          itemBuilder: (context, index) {
            return RecipeItemCreator(
              item: items[index],
              index: index,
              path: menuPath,
            );
          },
        ));
  }
}