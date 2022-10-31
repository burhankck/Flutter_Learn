import 'package:flutter/material.dart';

// Stack yapısında üst üste binen durumlar varsa kesinlikle Stack kullanılmalıdır.
// Example bir image ustune icon konulduğunu varsayalım.
// Son verilen ilk verilenin önünde olur hep.
class StackLearn extends StatelessWidget {
  const StackLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Positioned.fill(
              top: 100,
              child: Container(
                color: Colors.white,
              )),
          Container(
            color: Colors.blue,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              color: Colors.yellow,
              height: 100,
            ),
          ),
          Positioned(
              width: 25,
              bottom: 0,
              height: 100,
              child: Container(
                color: Colors.green,
              )),
        ],
      ),
    );
  }
}
