import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/Level_1/list_view_builder_learn.dart';
import 'package:flutter_app/Level_1/padding_learn.dart';
import 'package:flutter_app/Level_1/statefull_learn.dart';
import 'package:flutter_app/Level_2/service/service_learn_get_view.dart';

import 'Level_1/AppBar_learn.dart';
import 'Level_2/service/service_post_learn_view.dart';
import 'Level_2/tab_learn.dart';
import 'Lions/Lion_Demo.dart';
import 'Level_1/card_learn.dart';
import 'Level_1/column_row_learn.dart';
import 'Level_1/container_sized_box_learn.dart';
import 'Level_1/custom_widget_learn.dart';
import 'demos/note_demos.dart';
import 'demos2/stack_demo_view.dart';
import 'demos3/color_demos_view.dart';
import 'demos3/color_life_cycle_view.dart';
import 'demos4/my_colletions.dart';
import 'Level_1/indicator_learn.dart';
import 'Level_1/list_tille_learn.dart';
import 'Level_1/list_view_builder_learn.dart';
import 'Level_1/list_view_learn.dart';
import 'Level_1/navigator_learn.dart';
import 'Level_1/page_view_learn.dart';
import 'Level_1/stack_learn.dart';

import 'Level_1/text_field_learn.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          listTileTheme:
              const ListTileThemeData(contentPadding: EdgeInsets.zero),
          progressIndicatorTheme:
              const ProgressIndicatorThemeData(color: Colors.blue),
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          appBarTheme: AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.red.shade900,
            elevation: 3,
            systemOverlayStyle: SystemUiOverlayStyle.light,
          )),
      home: ServiceLearn(),
    );
  }
}
