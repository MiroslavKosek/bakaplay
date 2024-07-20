import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: HexColor('#FAFFFB'),
    primary: HexColor('#26ED37'),
    secondary: HexColor('#92B4D3'),
    tertiary: HexColor('#16DAC0'),
    onSurface: HexColor('#032607'),
    onPrimary: HexColor('#000501')
  )
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: HexColor('#000501'),
    primary: HexColor('#12D922'),
    secondary: HexColor('#2C4E6D'),
    tertiary: HexColor('#25E9CF'),
    onSurface: HexColor('#D9FCDD'),
    onPrimary: HexColor('#000501')
  )
);