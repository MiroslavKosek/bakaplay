import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: HexColor('#efe2fd'),
    primary: HexColor('#4e098b'),
    secondary: HexColor('#f56866'),
    tertiary: HexColor('#eb720f'),
    onSurface: HexColor('#110222')
  )
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: HexColor('#0f021d'),
    primary: HexColor('#b974f6'),
    secondary: HexColor('#990c0a'),
    tertiary: HexColor('#f07714'),
    onSurface: HexColor('#ecddfd')
  )
);