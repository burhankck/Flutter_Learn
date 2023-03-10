import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/Level_1/list_view_builder_learn.dart';
import 'package:flutter_app/Level_1/padding_learn.dart';
import 'package:flutter_app/Level_1/statefull_learn.dart';
import 'package:flutter_app/Level_2/animated_learn_view.dart';
import 'package:flutter_app/Level_2/cache/shared_learn_cache.dart';
import 'package:flutter_app/Level_2/form_learn_view.dart';
import 'package:flutter_app/Level_2/image_learn_202.dart';
import 'package:flutter_app/Level_2/oop_learn_view.dart';
import 'package:flutter_app/Level_2/theme/light_theme.dart';
import 'package:flutter_app/Level_2/theme_learn_view.dart';
import 'package:flutter_app/product/global/resource_context.dart';
import 'package:flutter_app/product/global/theme_notifier.dart';
import 'package:flutter_app/product/services/project_network_manager.dart';
import 'package:provider/provider.dart';

import 'Level_1/AppBar_learn.dart';

import 'Level_2/alert_learn.dart';
import 'Level_2/cache/secure_context/secure_context.dart';
import 'Level_2/cache/shared_list_cache.dart';
import 'Level_2/model_learn_view.dart';
import 'Level_2/package_learn_view.dart';
import 'Level_2/service/service_learn_view.dart';
import 'Level_2/service/service_post_learn_view.dart';
import 'Level_2/sheet_learn.dart';
import 'Level_2/state_manage/state_manage_learn_view.dart';
import 'Level_2/tab_learn.dart';
import 'Level_3/lottie_learn.dart';
import 'Level_3/part/call_back_learn.dart';
import 'Level_3/reqres_resource/view/reqres_view.dart';
import 'Level_3/tabbar_advance_learn.dart';
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

void main() => runApp(MultiProvider(
      providers: [
        // Sadece Data tutacaksak provider kullanıyoruz.
        Provider(
          create: (_) => ResourceContext(),
        ),
        // context kullanmıcaksak _ yapıyoruz.

        ChangeNotifierProvider<ThemeNotifier>(
          create: (context) => ThemeNotifier(),
        )
      ],
      builder: (context, child) => MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ProjectItems.projectName,
      debugShowCheckedModeBanner: false,
      theme: context.watch<ThemeNotifier>().currentTheme,
      // ThemeData.dark().copyWith(
      //     listTileTheme:
      //         const ListTileThemeData(contentPadding: EdgeInsets.zero),
      //     progressIndicatorTheme:
      //         const ProgressIndicatorThemeData(color: Colors.blue),
      //     cardTheme: CardTheme(
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(10))),
      //     appBarTheme: AppBarTheme(
      //       centerTitle: true,
      //       backgroundColor: Colors.red.shade900,
      //       elevation: 3,
      //       systemOverlayStyle: SystemUiOverlayStyle.light,
      //     )),
      home: const LottieLearn(),
    );
  }
}
