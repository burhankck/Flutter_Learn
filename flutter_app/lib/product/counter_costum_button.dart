import 'package:flutter/material.dart';
import 'package:flutter_app/product/language/language_items.dart';

class CounterCostum extends StatefulWidget {
  const CounterCostum({super.key});

  @override
  State<CounterCostum> createState() => _CounterCostumState();
}

class _CounterCostumState extends State<CounterCostum> {
  int _counterCostum = 0;
  final String welcomeTitle = LanguageItems.welcomeTitle;

  void updateCounter() {
    setState(() {
      ++_counterCostum;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          shape: const StadiumBorder(),
        ),
        onPressed: updateCounter,
        child: Text('$welcomeTitle $_counterCostum'),
      ),
    );
  }
}
