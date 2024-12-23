import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light
  );

  ThemeData get themeData => _lightTheme;

  set themeData(ThemeData themeData){
    _lightTheme = themeData;
    notifyListeners();
  }

  void toggleTheme(){
    if(_lightTheme == ThemeData(
      brightness: Brightness.light
    )){
      themeData = ThemeData(brightness: Brightness.dark);
    }else{
      themeData = ThemeData(brightness: Brightness.light,);
    }
  }
}