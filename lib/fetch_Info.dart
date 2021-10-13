// ignore_for_file: file_names, prefer_const_constructors


import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';


Future<String> getInformation(String databasePath) async {
  FirebaseDatabase database = FirebaseDatabase.instance;
  DatabaseReference _ref =
      database.reference().child(databasePath);
  String result = await _ref.once().then((value) => value.value);
  print(result);
  return result;
}