import 'package:flutter/material.dart';
import 'item_model.dart';
import 'item_constructor.dart';

class menuListView extends StatelessWidget {
  final List<ItemModel> Recipes;

  menuListView(this.Recipes);

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