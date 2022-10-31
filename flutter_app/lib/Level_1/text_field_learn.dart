import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: TextField(
          maxLength: 20,
          buildCounter: (context,
              {int? currentLength, required isFocused, maxLength}) {
            return Container(
              height: 10,
              width: 10.0 * (currentLength ?? 0),
              color: Colors.green,
              //color: Colors.green[100 * (currentLength ?? 0) ~/ 2],
            );
          },
          keyboardType: TextInputType.emailAddress,
          autofillHints: const [AutofillHints.email],
         
          decoration: const InputDecoration(
            prefixIcon: Icon(Icons.mail),
            border: OutlineInputBorder(),
            hintText: 'Mail',
            labelText: 'Mailll',
            fillColor: Colors.grey,
            filled: true,
          ),
        ),
      ),
    );
  }
}
