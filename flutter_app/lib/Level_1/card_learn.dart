import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargin.cardMargin,
            child:  SizedBox(
              height: 100,
              width: 500,
              child: Center(child: Text('Ali')),
            ),
            color: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            // StadiumBorder(), CircleBorder(), RoundedRectangleBorder()
          ),
          Card(
            margin: ProjectMargin.cardMargin,
            child: SizedBox(
              height: 100,
              width: 500,
              child: Center(child: Text('Ali')),
            ),
            color: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            // StadiumBorder(), CircleBorder(), RoundedRectangleBorder()
          ),
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 500,
              child: Center(child: Text('Ali')),
            ),
          ),
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 500,
              child: Center(child: Text('Ali')),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectMargin {
  static const cardMargin = EdgeInsets.all(20);
  static final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10));
}

class _CustomCard extends StatelessWidget {
  _CustomCard({Key? key, required this.child}) : super(key: key);
  final Widget child;
  final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(10));
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargin.cardMargin,
      child: child,
      color: Colors.blue,
    );
  }
}
