import 'package:flutter/material.dart';
class MainTheme {

  ThemeData mainTheme()
  {
    return ThemeData(
      primaryColor: Colors.black,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      useMaterial3: true,
    );
  }

}