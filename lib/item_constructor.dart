import 'dart:html';

import 'package:flutter/material.dart';

class ItemBox extends StatelessWidget {

  final String photoID;
  final String foodName;

  ItemBox({ required this.photoID, required this.foodName,});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        child: Column(
          children: [
            Image(
                image: AssetImage(photoID),
              ),
            ListTile(
              title: Text(
                foodName,
              ),
              trailing: Icon(Icons.arrow_downward_rounded),
            )
          ],
        ),
      ),
      
    );
  }
}