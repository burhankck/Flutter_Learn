

import 'package:flutter/material.dart';
import 'package:flutter_app/Level_1/card_learn.dart';
import 'package:flutter_app/Level_1/image_learn.dart';
import 'package:flutter_app/Level_1/indicator_learn.dart';
import 'package:flutter_app/Level_1/stack_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchMargins = 5;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              _tabController.animateTo(_MyTabViews.home.index);
            },
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: _notchMargins,
            shape: const CircularNotchedRectangle(),
            child: _myTab(),
          ),
          appBar: AppBar(),
          body: _tabbarView(),
        ));
  }

  TabBar _myTab() {
    return TabBar(
        indicatorColor: Colors.yellow,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.yellow,
        controller: _tabController,
        padding: EdgeInsets.zero,
        onTap: (int index) {},
        tabs: _MyTabViews.values
            .map((e) => Tab(
                  text: e.name,
                ))
            .toList());
  }

  TabBarView _tabbarView() {
    return TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: const [
          CardLearn(),
          StackLearn(),
          ImageLearn(),
          IndicatorLearn(),
        ]);
  }
}

enum _MyTabViews {
  home,
  settings,
  favorite,
  profile,
}

extension _MyTabViewExtansion on _MyTabViews {}
