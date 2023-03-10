import 'package:flutter/material.dart';
import 'package:flutter_app/Level_2/theme/light_theme.dart';

class ThemeNotifier extends ChangeNotifier {
  bool isLighTeme = false;

  void changeTheme() {
    isLighTeme = !isLighTeme;
    notifyListeners();
  }

  ThemeData get currentTheme =>
      !isLighTeme ? ThemeData.light() : ThemeData.dark();
}
