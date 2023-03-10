import 'package:flutter/material.dart';
import 'package:flutter_app/Level_2/cache/shared_not_initalize.dart';
import 'package:shared_preferences/shared_preferences.dart';


enum SharedKeys { counter, users }

class SharedManager {
  SharedPreferences? preferences;

  SharedManager() {
    init();
  }

  Future<void> init() async {
    preferences = await SharedPreferences.getInstance();
  }

  void _checkPreferences() {
    if (preferences == null) throw SharedNotInitialzeException();
  }

  Future<void> saveString(SharedKeys key, String value) async {
    _checkPreferences();
    await preferences?.setString(key.name, value);
  }

  Future<void> saveStringItems(SharedKeys key, List<String>  value) async  {
    _checkPreferences();
   await   preferences?.setStringList(key.name, value);
  }

  List<String>? getStrings(SharedKeys key)  {
    _checkPreferences();
   return  preferences?.getStringList(key.name);
  }

  String? getString(SharedKeys key) {
    _checkPreferences();
    return preferences?.getString(key.name);
    // String strKey = key.index.toString();
    // return preferences?.getString(strKey);
  }

  Future<bool> removeItem(SharedKeys key) async {
    _checkPreferences();
    return (await preferences?.remove(key.name)) ?? false;
  }
}
