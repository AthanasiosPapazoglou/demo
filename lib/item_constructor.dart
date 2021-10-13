

import 'package:flutter/material.dart';
import 'item_model.dart';
import 'item_screen.dart';

class ItemBox extends StatelessWidget {

  final ItemModel item;
  
  ItemBox(this.item);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('click listened');
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => SelectedItemPage(photoID: item.photoID, foodName: item.foodName)),
  );
        //SelectedItemPage(photoID: item.photoID, foodName: item.foodName);
      },
      child: Container(
        padding: EdgeInsets.all(15),
        child: Card(
          child: Column(
            children: [
              Image(
                  image: AssetImage(item.photoID), 
                  //it: BoxFi
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
        
      ),
    );
  }
}