

import 'package:flutter/material.dart';
import 'item_model.dart';

class ItemBox extends StatelessWidget {

  final ItemModel item;
  
  ItemBox(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Card(
        child: Column(
          children: [
            Image(
                image: AssetImage(item.photoID),
              ),
            ListTile(
              title: Text(
                item.foodName,
              ),
              trailing: Icon(Icons.arrow_downward_rounded),
            )
          ],
        ),
      ),
      
    );
  }
}