import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Center(child: CircularProgressWhiteWidget())],
      ),
      body: const Center(
        child: LinearProgressIndicator(),
      ),
    );
  }
}

class CircularProgressWhiteWidget extends StatelessWidget {
  const CircularProgressWhiteWidget({
    Key? key,
  }) : super(key: key);
  final whiteColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: whiteColor,
      strokeWidth: 10,
      value: 0.8,
      backgroundColor: Colors.blue,
    );
  }
}
