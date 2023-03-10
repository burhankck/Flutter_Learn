import 'package:flutter/material.dart';
import 'package:flutter_app/Level_2/state_manage/state_learn_view_model.dart';

class StateManageViewLearn extends StatefulWidget {
  const StateManageViewLearn({super.key});

  @override
  State<StateManageViewLearn> createState() => _StateManageViewLearnState();
}

class _StateManageViewLearnState extends SateteLearnViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeVisible();
        },
      ),
      appBar: AppBar(
        backgroundColor: isOpacity ? Colors.red : Colors.green,
        shadowColor: isVisible ? Colors.amber : Colors.grey,
      ),
    );
  }
}
