import 'package:flutter/material.dart';

// light mode
ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade300,
    primary: Colors.grey.shade200,
    secondary: Colors.grey.shade400,
    inversePrimary: Colors.grey.shade800
    ),
);

// dark mode
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
      background: const Color.fromARGB(255, 0, 0, 0),
      primary: Color.fromARGB(255, 31, 30, 30),
      secondary: Colors.grey.shade700,
      inversePrimary: Colors.grey.shade300),
);
