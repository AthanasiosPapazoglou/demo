import 'package:flutter/material.dart';
import 'package:demo/Firebase/calls.dart';
import 'package:demo/models/item_model.dart';

class Information extends ChangeNotifier {
  //constructor
  Information(this.context) {
    setMenusList();
  }

  //vars
  BuildContext context;
  final List<String> _menusList = [];
  final List<String> _menusPathsList = [];

  Map<String, List<Item>> _menuAndItemsList = Map();

  //info about food lists (key is the path of a specific menu, value is the list of the foods of that menu)
  Map<String, List<Item>> get menuAndItemsList {
    return {..._menuAndItemsList};
  }

  //the list containing the menus titles
  List<String> get menusList {
    return [..._menusList];
  }

  //the list containing the menus paths
  List<String> get menusPathsList {
    return [..._menusPathsList];
  }

  //stores menu names and paths from database to provider variables
  Future<void> setMenusList() async {
    for (int i = 1; i < 4; i++) {
      _menusList.add(await DatabaseCalls(context).getTitle(i));
      _menusPathsList.add(await DatabaseCalls(context).getContentKeyPaths(i));
    }

    notifyListeners();
    //await setItemsMap();
  }
  ///[path]
  Future<void> setItemsMap(String path) async {
    if (_menuAndItemsList.containsKey(path)) {
      return;
    }
    _menuAndItemsList[path] = await DatabaseCalls(context).getItemMap(path);
    notifyListeners();
  }
}


//!setMenusList
//getTitle & getContentsKeyPaths

//!setItemsMap | Σε ενα map, 
//getImage -> getItemVars -> getItems -> getItemMap -> setItemsMap

///