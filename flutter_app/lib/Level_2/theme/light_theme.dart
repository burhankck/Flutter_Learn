import 'package:flutter/material.dart';

class LightTheme {
  final _lightColor = _LightColor();

  late ThemeData theme;

  LightTheme() {
    theme = ThemeData.light().copyWith(
      appBarTheme: const AppBarTheme(
          shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
      )),
      scaffoldBackgroundColor: Colors.white.withOpacity(0.3),
      buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.light(
              onPrimary: Colors.blue, onSecondary: _lightColor.RedOrpiment)),
      checkboxTheme: const CheckboxThemeData(
          fillColor: MaterialStatePropertyAll(Colors.green),
          side: BorderSide(color: Colors.green)),
      colorScheme: const ColorScheme.light(),
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: Colors.green),
      textTheme: ThemeData.light().textTheme.copyWith(
              bodyMedium: const TextStyle(
            fontSize: 25,
            fontStyle: FontStyle.normal,
            color: Colors.white,
          )),
    );
  }
}

class _LightColor {
  final Color textColor = Colors.redAccent;
  final Color RedOrpiment = const Color.fromARGB(210, 107, 86, 1);
}
