import 'package:flutter/material.dart';
import 'package:flutter_app/Level_2/oop_learn.dart';

class OOPLearnView extends StatefulWidget {
  const OOPLearnView({super.key});

  @override
  State<OOPLearnView> createState() => _OOPLearnViewState();
}

class _OOPLearnViewState extends State<OOPLearnView> {
  FileDowland? dowland;
  @override
  void initState() {
    super.initState();
    dowland = FileDowland();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [CircularProgressIndicator(color: Colors.white,)],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          dowland?.dowlandItem(null);
        },
      ),
    );
  }
}
