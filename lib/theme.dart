import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const _primaryColorLight = Color.fromARGB(255, 195, 192, 192);
  static const _primaryColorDarkt = Color.fromARGB(255, 61, 61, 61);

  static const _primaryTextLight = Colors.black;
  static const _primaryTextDarkt = Colors.white;

  static final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      //primaryTextTheme: Colors.black,
      colorScheme: ColorScheme.fromSeed(
          seedColor: _primaryColorLight, brightness: Brightness.light,
          primary: _primaryColorLight),
      primaryColor: _primaryTextLight);

  static final ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          seedColor: _primaryColorDarkt, 
          primary: _primaryColorDarkt),
          primaryColor: _primaryTextDarkt,);
}
