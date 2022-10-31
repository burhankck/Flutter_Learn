import 'package:flutter/material.dart';
import 'package:flutter_app/product/counter_costum_button.dart';
import 'package:flutter_app/product/language/language_items.dart';

import 'product/language/language_items.dart';

class SatefullLearn extends StatefulWidget {
  const SatefullLearn({super.key});
// Burada iki class bizi karsiliyor.
// ilk class degismez bir yapıdır.
// Sadece dısardan parametre alır stateless gibi calısır.
  @override
  State<SatefullLearn> createState() => _SatefullLearnState();
}

class _SatefullLearnState extends State<SatefullLearn> {
  int _countValue = 0;

  // void incrementValue() {
  //   setState(() {
  //     _countValue = _countValue + 1;
  //   });
  // }

  // void deincrementValue() {
  //   setState(() {
  //     _countValue = _countValue - 1;
  //   });
  //   }

  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }
    setState(() {});
  }

  // Setstate icine kod yazıldıgında build methodu tekrar tetiklenir.
  // Value' miz son halini almıs olur

  // Burası hayatı belirler hayatı tutar.
  // Burada degisiklik olur.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _incrementButton(),
          _deincerementButton(),
        ],
      ),
      body: Column(
        children: [
          Center(
              child: Text(_countValue.toString(),
                  style: Theme.of(context).textTheme.headline2)),
          const Placeholder(),
          const CounterCostum(),
        ],
      ),
    );
  }

  FloatingActionButton _incrementButton() {
    print('burda');
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }

  Padding _deincerementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }
}
