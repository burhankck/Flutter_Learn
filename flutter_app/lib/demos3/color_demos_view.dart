// bir ekran olacak bu ekranda 3 button ve bunlara basınca renk degısımı olacak.
// secili olan button selected icon olsun.
import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color? initialColor;
  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor = Colors.transparent;
  @override
  void initState() {
    _backgroundColor = widget.initialColor ?? Colors.transparent;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.initialColor != _backgroundColor &&
        widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar:
          BottomNavigationBar(onTap: _colorOnTap, items: const [
        BottomNavigationBarItem(
            icon: _colorSize(
              color: Colors.red,
            ),
            label: 'Red'),
        BottomNavigationBarItem(
            icon: _colorSize(
              color: Colors.yellow,
            ),
            label: 'Yellow'),
        BottomNavigationBarItem(
            icon: _colorSize(
              color: Colors.blue,
            ),
            label: 'Blue'),
      ]),
    );
  }

  void _colorOnTap(int value) {
    if (value == _Mycolors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _Mycolors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    } else if (value == _Mycolors.blue.index) {
      changeBackgroundColor(Colors.blue);
    }
  }
}

enum _Mycolors { red, yellow, blue }

class _colorSize extends StatelessWidget {
  const _colorSize({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 20,
      height: 10,
    );
  }
}
