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

/*class ThemeClass {
  Color lightBackgroundColor = HexColor('#FAFFFB');
  Color darkBackgroundColor = HexColor('#000501');

  Color lightTextColor = HexColor('#032607');
  Color darkTextColor = HexColor('#D9FCDD');

  Color lightPrimaryColor = HexColor('#26ED37');
  Color darkPrimaryColor = HexColor('#12D922');

  Color lightSecondaryColor = HexColor('#92B4D3');
  Color darkSecondaryColor = HexColor('#2C4E6D');

  Color lightAccentColor = HexColor('#16DAC0');
  Color darkAccentColor = HexColor('#25E9CF');

  static ThemeData lightTheme = ThemeData(
    primaryColor: _themeClass.lightBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: _themeClass.lightPrimaryColor,
      secondary: _themeClass.lightSecondaryColor,
      tertiary: _themeClass.lightAccentColor
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: _themeClass.darkBackgroundColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: _themeClass.darkPrimaryColor,
      secondary: _themeClass.darkSecondaryColor,
      tertiary: _themeClass.darkAccentColor
    ),
  );
}

ThemeClass _themeClass = ThemeClass();*/