import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Padding'),
        ),
        body: Column(
          children: [
            Padding(
              padding: ProjectPadding.pagePaddingVertical,
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: ProjectPadding.pagePaddingVerHor,
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: ProjectPadding.pagePaddingOnlyRight +
                  ProjectPadding.pagePaddingVertical,
              child: const Text('Ali'),
            ),
          ],
        ));
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 20);
  static const pagePaddingOnlyRight = EdgeInsets.only(right: 20);
  static const pagePaddingVerHor =
      EdgeInsets.symmetric(vertical: 10, horizontal: 20);
}
