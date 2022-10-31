import 'package:flutter/material.dart';
import 'package:flutter_app/Level_1/image_learn.dart';
import 'package:flutter_app/Level_1/list_view_builder_learn.dart';

import 'navigate_detail_learn.dart';

class NavigatorLearn extends StatefulWidget {
  const NavigatorLearn({super.key});

  @override
  State<NavigatorLearn> createState() => _NavigatorLearnState();
}

class _NavigatorLearnState extends State<NavigatorLearn> with NavigatorMenager {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return const Placeholder(
            color: Colors.red,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          NavigatorWidget(context, const NavigateDetailLearn());
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

mixin NavigatorMenager {
  void NavigatorWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: ((context) {
            return widget;
          }),
          fullscreenDialog: true,
          settings: const RouteSettings()),
    );
  }
}


 Future<T?>  NavigatoToWidgetNormal <T> (BuildContext context, Widget widget) {
   return  Navigator.of(context).push<T>(
      MaterialPageRoute(
          builder: ((context) {
            return widget;
          }),
          fullscreenDialog: true,
          settings: const RouteSettings()),
    );
  }