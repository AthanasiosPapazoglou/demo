import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:demo/models/item_model.dart';
import 'package:demo/screens/item_screen.dart';

class RecipeItemCreator extends StatefulWidget {
  Item item;
  final int index;
  final String path;

  RecipeItemCreator(
      {required this.item, required this.index, required this.path});

  @override
  State<RecipeItemCreator> createState() => _RecipeItemCreatorState();
}

class _RecipeItemCreatorState extends State<RecipeItemCreator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(2, 2),
            blurRadius: 0.8,
          ),
          BoxShadow(
            color: Colors.grey,
            offset: Offset(-2, 2),
            blurRadius: 0.8,
          ),
        ],
      ),
      child: Column(
        children: [
          widget.item.imageUrl != null
              ? Image.network(
                  widget.item.imageUrl!,
                )
              : Container(),
          ExpandablePanel(
            header: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(10.0),
              child: Text(
                widget.item.title,
                textScaleFactor: 1.3,
              ),
            ),
            collapsed: Container(),
            expanded: SizedBox(
              width: double.infinity,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.item.description ?? " ",
                    textScaleFactor: 1.1,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectedItemPage(
                          index: widget.index,
                          path: widget.path,
                        ),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: const Text("Φτιάξτε την συνταγή"),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
