import 'package:flutter/material.dart';
import 'package:flutter_app/Level_1/navigator_learn.dart';
import 'package:flutter_app/demos/note_demos.dart';
import 'package:flutter_app/Level_1/navigator_learn.dart';

class NavigateDetailLearn extends StatefulWidget {
  const NavigateDetailLearn({super.key});

  @override
  State<NavigateDetailLearn> createState() => _NavigateDetailLearnState();
}

class _NavigateDetailLearnState extends State<NavigateDetailLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton.icon(
              onPressed: () async {
                final response = await  NavigatoToWidgetNormal<bool>(
                    context, NavigateDetailLearn());
                  if (response == true) {
                     
                  }
              },
              icon: Icon(Icons.check),
              label: Text('Onayla'))),
    );
  }
}
