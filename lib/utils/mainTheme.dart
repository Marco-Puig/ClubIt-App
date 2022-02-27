import 'package:flutter/material.dart';

class MainTheme {
  Color _blueColor = Color.fromARGB(255, 6, 88, 155);
  Color _darkGreyColor = Color.fromARGB(255, 42, 51, 59);
  Color _lightGreyColor = Color.fromARGB(255, 69, 88, 104);

  ThemeData buildTheme() {
    return ThemeData(
        canvasColor: _blueColor,
        primaryColor: _blueColor,
        accentColor: _darkGreyColor,
        secondaryHeaderColor: _lightGreyColor,
        hintColor: _lightGreyColor,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
              color: _lightGreyColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(
              color: _blueColor,
            ),
          ),
        ),
        buttonTheme: ButtonThemeData(
            buttonColor: _darkGreyColor,
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            minWidth: 200.0,
            height: 40.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            )));
  }
}
