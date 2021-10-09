import 'package:flutter/material.dart';

class ItemModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          Image(
            image: AssetImage('images/Meat.jpg'),
          ),
          Card(
            child: Row(
              children: [
                Text(
                  'Sample Meat Food',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 190,
                ),
                Icon(Icons.home,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
