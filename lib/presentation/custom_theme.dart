import 'package:flutter/material.dart';

const largeTextSize = 26.0;
const mediumTextSize = 20.0;
const smallTextSize = 16.0;

const String fontNameDefault = 'Ubuntu';

class CustomTheme {
  static ThemeData get mainTheme {
    return ThemeData(
      fontFamily: fontNameDefault,
      scaffoldBackgroundColor: Colors.grey[200],
      colorSchemeSeed: const Color.fromARGB(255, 130, 186, 67),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontSize: largeTextSize),
        bodyMedium: TextStyle(fontSize: mediumTextSize),
        bodySmall: TextStyle(fontSize: smallTextSize),
        // bodyText2: TextStyle(fontSize: largeTextSize),
        // button: TextStyle(fontSize: mediumTextSize),
        // subtitle1: TextStyle(fontSize: mediumTextSize),
      ),
    );
  }
}
