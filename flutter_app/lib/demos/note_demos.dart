import 'package:flutter/material.dart';
import 'package:flutter_app/Level_1/image_learn.dart';

import '../Level_1/image_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final title = 'Create Your First Note';
  final text =
      'Add a note about anything your thougths on climate change, or your history essay and share it witht the world';
  final _createNote = 'Create A Note';
  final _importNote = 'Import Notes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(path: ImageItems().appleBookWithPath),
            TitleWidget(title: title),
            const Padding(padding: PaddingVertical.verticalPadding),
            const TextWidget(),
            const SizedBoxWidget(),
            ElevetedButton(createNote: _createNote),
            const SizedBoxWidget(),
            TextButtons(importNote: _importNote),
          ],
        ),
      ),
    );
  }
}

class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(height: 40);
  }
}

class TextButtons extends StatelessWidget {
  const TextButtons({
    Key? key,
    required String importNote,
  })  : _importNote = importNote,
        super(key: key);

  final String _importNote;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {}, child: Text(_importNote));
  }
}

class ElevetedButton extends StatelessWidget {
  const ElevetedButton({
    Key? key,
    required String createNote,
  })  : _createNote = createNote,
        super(key: key);

  final String _createNote;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
        onPressed: () {},
        child: SizedBox(
            height: 60,
            width: 400,
            child: Center(
              child: Text(_createNote,
                  style: Theme.of(context).textTheme.headline5),
            )));
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const text =
        'Add a note about anything your thougths on climate change, or your history essay and share it witht the world';
    return const Text(
      text,
      style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.normal,
          color: Color.fromARGB(255, 47, 64, 73),
          fontWeight: FontWeight.w400),
      textAlign: TextAlign.center,
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context).textTheme.headline5?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            letterSpacing: 3,
            wordSpacing: 3));
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
}

class PaddingVertical {
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}
