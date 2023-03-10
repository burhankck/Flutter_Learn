import 'package:flutter/material.dart';
import 'package:flutter_app/Level_2/state_manage/state_manage_learn_view.dart';

 abstract class SateteLearnViewModel extends State<StateManageViewLearn> {
   bool isVisible = false;
  bool isOpacity = false;

  void changeVisible() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      isOpacity = !isOpacity;
    });
  }
}