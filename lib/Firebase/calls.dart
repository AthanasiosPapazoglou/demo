
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:demo/models/item_model.dart';

FirebaseDatabase database = FirebaseDatabase.instance;

class DatabaseCalls {
  DatabaseCalls(this.context);

  BuildContext context;

  //gets Menu title
  //!Called in SetMenusList (MENUS)
  Future<String> getTitle(int menuNumber) async {
    DatabaseReference _ref = database
        .reference()
        .child('menu_options/menu_option_$menuNumber/title');
    String result = await _ref.once().then((value) => value.value);
    return result;
  }

  //gets
  //!Called in SetMenusList (MENUS)
  Future<String> getContentKeyPaths(int menuNumber) async {
    DatabaseReference _ref = database
        .reference()
        .child('menu_options/menu_option_$menuNumber/contents_keys_path');
    var result = await _ref.once().then((value) => value.value);

    return result;
  }

  //Gets Image (used in getItemVars)
  //!Called by getItemVars HERE
  Future<String?> getImage(String? path) async {
    if (path == null) {
      return null;
    }
    FirebaseStorage storage = FirebaseStorage.instance;
    Reference _ref = storage.ref(path);

    return _ref.getDownloadURL();
  }

  //returns a future list/map with children of <Item> which have been created by getItemVars
  //!Called in setItemsMap (MENUS)
  Future<List<Item>> getItemMap(String key) async {
    DatabaseReference _ref = database.reference().child('${key}');
    var dataResult = await _ref.once().then((value) => value.value);
    var resultMap = await getItems([...dataResult.keys].cast<String>());

    return resultMap;
  }

//Gets all variables from an Item BY CALLING getItemVars
  //!Called by getItemMap HERE
  Future<List<Item>> getItems(List<String> keys) async {
    List<Item> itemMap = [];
    for (String key in keys) {
      Item item = await getItemVars(key);

      itemMap.add(item);
    }
    return itemMap;
  }

  //ACTUALLY Gets all variables for an Item
  //!Called by getItems HERE
  Future<Item> getItemVars(String key) async {
    Item item;
    //database calls
    //Item Summary:
    DatabaseReference _ref = database.reference().child('item_summaries/$key');
    var resultSummary = await _ref.once().then((value) => value.value);
    //Item Content:
    _ref = database.reference().child('item_contents/$key');
    var resultContent = await _ref.once().then((value) => value.value);
    //Website URL:
    _ref = database.reference().child('item_external_links/website_urls/$key');
    var resultweb = await _ref.once().then((value) => value.value);
    //YouTube URL:
    _ref = database.reference().child('item_external_links/youtube_urls/$key');
    var resultYt = await _ref.once().then((value) => value.value);

    var image = await getImage(resultSummary["image_path"]);

    item = Item(
        itemKey: key,
        title: resultSummary["title"],
        description: resultSummary["description"],
        imagePath: resultSummary["image_path"],
        imageUrl: image,
        ingredients: resultContent["ingredients"].cast<String>(),
        instructions: resultContent["instructions"].cast<String>(),
        webUrl: resultweb,
        ytUrl: resultYt);

    return item;
  }
}




/* paths
'menu_options/menu_option_$menuNumber/title'               --- a menu title
'menu_options/menu_option_$menuNumber/contents_keys_path'   --- key paths for contents of numbered menu
'item_summaries/$key'                                      --- title/description/(path)image of specific recipe item (key)
'item_contents/$key'                                       --- ingre/instructions of specific recipe item (key)
'item_external_links/website_urls/$key'                    --- website url of specific recipe item (key)
'item_external_links/youtube_urls/$key'                    --- youtube url of specific recipe item (key) 

*/