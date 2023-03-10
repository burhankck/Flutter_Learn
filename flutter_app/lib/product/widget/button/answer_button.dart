import 'dart:math';

import 'package:flutter/material.dart';

class AnswerButton extends StatefulWidget {
  const AnswerButton({super.key, this.onNumber});
  final bool Function(int number)? onNumber;

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  // Bana bir sayi don ramdom bu sayi kontrol edip sana bir cevap vericem
  // bu cevaba gore butonon rengini guncelle
  // eger dogru ise yesil yanlis ise kırmızı yap
  Color? _backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: _backgroundColor),
      child: Text('data'),
      onPressed: () {
        final result = Random().nextInt(10);

        final response = widget.onNumber?.call(result);
        if (response != null) {
          setState(() {
            _backgroundColor = response ? Colors.green : Colors.red;
          });
        }
      },
    );
  }
}
