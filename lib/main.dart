import 'package:flutter/material.dart';

import 'home.dart';
import 'on_board.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      snackBarTheme: SnackBarThemeData(
        backgroundColor: Color(0xffB282E3), // Set your desired background color
      ),
      // Other theme properties
    ),
    debugShowCheckedModeBanner: false,
    home: Into_screen(),
  ));
}
