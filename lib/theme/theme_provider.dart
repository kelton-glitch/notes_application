import 'package:flutter/material.dart';
import 'package:notes_application/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  //initially, theme is light mode
  ThemeData _themeData = lightMode;

  // getter method to access the theme from other parts of code
  ThemeData get themeData => _themeData;

  bool get inDarkMode => _themeData == darkMode;

  //setter method for new theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  //toggle function to switch between themes
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
