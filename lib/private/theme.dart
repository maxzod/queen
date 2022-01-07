import 'package:flutter/material.dart';

class _QueenBrandColors {
  _QueenBrandColors._();

  static const darkMain = Color(0xFF000216);
  static const red = Color(0xFFff3a3c);
}

final kQueenTheme = ThemeData.dark().copyWith(
  // primaryColor: _QueenBrandColors.darkMain,
  colorScheme: const ColorScheme.dark(
    primary: _QueenBrandColors.darkMain,
    background: _QueenBrandColors.red,
    secondary: _QueenBrandColors.red,
  ),
  textTheme: const TextTheme(
    button: TextStyle(
      color: Colors.white,
    ),
  ),
);
