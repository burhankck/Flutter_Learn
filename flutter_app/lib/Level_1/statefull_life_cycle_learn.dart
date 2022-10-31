import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});
  final String message;
  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  @override
  String _message = "";
   late final bool _isOdd;
  // isodd ile ilgili durum olmadıgı icin final atıyoruz.
  // mesaj tekse tek ciftse cif yaz yanina.
  // late atiyoruz, initstate daha ekran cizilmeden degerini alacak ve sabitlemis olacak. Bir daha deger atamazsin.
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;

    _computaName();
  }

  void _computaName() {
    if (_isOdd) {
      _message += " Tek";
    } else {
      _message += " Çift";
    }
  }
  // initState bittikten sonra build methodu calısır.
  // initState sonra sayfa cizilir.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_message),
        ),
        body: _isOdd
            ? TextButton(onPressed: () {}, child: Text(_message))
            : ElevatedButton(onPressed: () {}, child: Text(_message)));
  }
}
