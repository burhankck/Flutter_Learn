import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({
    Key? key,
    this.userName,
  }) : super(key: key);

  final String name = 'Kocak';
  final String? userName;
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(('Welcome $name ${name.length}'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjctStyles.welcomeStyle),
          Text(('Hello $name ${name.length}'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: ProjctStyles.welcomeStyle),
          Text(('Merhaba $name ${name.length}'),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: ProjectColors.welcomeColor)),
          Text(userName ?? ''),
          Text(keys.welcome),
        ],
      )),
    );
  }
}

class ProjctStyles {
  static TextStyle welcomeStyle = const TextStyle(
    decoration: TextDecoration.underline,
    fontStyle: FontStyle.italic,
    fontSize: 16,
    color: Colors.lime,
    wordSpacing: 2,
    letterSpacing: 2,
    fontWeight: FontWeight.w600,
  );
}

class ProjectColors {
  static Color get welcomeColor => Colors.blue;
  // get yaptıgımız icin anında degisiyor.
}

class ProjectKeys {
  final String welcome = 'Merhaba';
}
