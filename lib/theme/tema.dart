import 'package:flutter/material.dart';

class Tema {
  static const Color primario = Colors.green;
  static final ThemeData light = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: primario,
      elevation: 0,
      centerTitle: true,
    ),
    iconTheme: const IconThemeData(color: primario),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: primario,
      ),
    ),
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primario),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: primario, shape: const StadiumBorder()),
    ),
  );
}
