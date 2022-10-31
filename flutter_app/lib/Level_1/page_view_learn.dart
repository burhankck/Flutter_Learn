import 'package:flutter/material.dart';
import 'package:flutter_app/Level_1/card_learn.dart';
import 'package:flutter_app/Level_1/image_learn.dart';
import 'package:flutter_app/Level_1/card_learn.dart';
import 'package:flutter_app/Level_1/image_learn.dart';
import 'package:flutter_app/Level_1/indicator_learn.dart';
import 'package:flutter_app/Level_1/stack_learn.dart';

class PageViewLEarn extends StatefulWidget {
  PageViewLEarn({super.key});
  @override
  State<PageViewLEarn> createState() => _PageViewLEarnState();
}

class _PageViewLEarnState extends State<PageViewLEarn> {
  final _pageController = PageController(viewportFraction: 1);

  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Row(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(_currentPageIndex.toString()),
            ),
            const Spacer(),
            FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: _durationUtility._durationLow,
                    curve: Curves.linear);
              },
              child: const Icon(Icons.chevron_left),
            ),
            FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: _durationUtility._durationLow,
                    curve: Curves.linear);
              },
              child: const Icon(Icons.chevron_right),
            ),
          ],
        ),
        appBar: AppBar(),
        body: PageView(
          padEnds: false,
          controller: _pageController,
          onPageChanged: _updatePageIndex,
          children: const [
            ImageLearn(),
            CardLearn(),
            StackLearn(),

            // Container(color: Colors.blue),
            // Container(color: Colors.green),
            // Container(color: Colors.amber),
          ],
        ));
  }
}

class _durationUtility {
  static const _durationLow = Duration(seconds: 1);
}
