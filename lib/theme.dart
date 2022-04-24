import 'package:flutter/material.dart';

class MainTheme {
  static ThemeData light() {
    return ThemeData(
        brightness: Brightness.light,
        colorScheme: const ColorScheme.light(
            primary: Color(0xff452f2b),
            primaryContainer: Color(0xffc7bcac),
            secondary: Color(0xffe3b964),
            secondaryContainer: Color(0xffffde9c),
            tertiary: Color(0xfff5e9c9),
            tertiaryContainer: Color(0xfffee7ad),
            error: Color(0xffb00020)));
  }
}
