// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import '../item_model.dart';
import '../UIbuilders/item_constructor.dart';

class MenuFoodList extends StatelessWidget {
  final int menuNum;
  final String menuPath;

  MenuFoodList({required this.menuNum, required this.menuPath});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Recipes.length,
      itemBuilder: (context, index){
        return ItemBox(Recipes[index]);
      }
    );
  }
}