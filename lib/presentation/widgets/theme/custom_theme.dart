


import 'package:flutter/material.dart';

get darkTheme => ThemeData(
  primarySwatch: Colors.grey,
  appBarTheme: AppBarTheme(
    brightness: Brightness.dark,color: Colors.black,
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(color: Colors.blueGrey),
    labelStyle: TextStyle(color: Colors.white),
  ),
  brightness: Brightness.dark,
  canvasColor: Colors.black,
  accentColor: Colors.red,
  accentIconTheme: IconThemeData(color: Colors.white)
);