import 'package:flutter/material.dart';

class Lions extends StatelessWidget {
  const Lions({super.key});
  final title = 'Lions';
  final textTitle = 'Life Of Lion';
  final textLife =
      'Lions are carnivores. They consume a lot of meat during the day. It is among the dangerous animals for humans';
  final _textButton = 'Click For Details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: PaddingPageLion.horizontalLionPadding,
        child: Column(
          children: [
            sizedboxHeight(),
            Image.asset(ImageLion().lionImage),
            sizedboxHeight(),
            titleWidget(textTitle: textTitle),
            sizedboxHeight(),
            _subTitleWidget(textLife: textLife, textAlign: TextAlign.center),
            sizedboxHeight(),
            _clickButton(context)
          ],
        ),
      ),
    );
  }

  ElevatedButton _clickButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(backgroundColor: Colors.red.shade400),
        child: SizedBox(
            height: ButtonHeigt.buttonHeigts,
            child: Center(
                child: Text(
              _textButton,
              style: Theme.of(context).textTheme.headline6,
            ))));
  }

  SizedBox sizedboxHeight() => const SizedBox(height: 20);
}

class ButtonHeigt {
  static const double buttonHeigts = 50;
}

class _subTitleWidget extends StatelessWidget {
  const _subTitleWidget({
    Key? key,
    required this.textAlign,
    required this.textLife,
  }) : super(key: key);
  final TextAlign? textAlign;
  final String textLife;

  @override
  Widget build(BuildContext context) {
    return Text(textLife,
        textAlign: textAlign,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: Colors.black,
              letterSpacing: 2,
              wordSpacing: 2,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ));
  }
}

class titleWidget extends StatelessWidget {
  const titleWidget({
    Key? key,
    required this.textTitle,
  }) : super(key: key);

  final String textTitle;

  @override
  Widget build(BuildContext context) {
    return Text(textTitle,
        style: Theme.of(context).textTheme.headline4?.copyWith(
            color: Colors.black,
            letterSpacing: 2,
            wordSpacing: 2,
            fontSize: 40,
            fontWeight: FontWeight.w600));
  }
}

class PaddingPageLion {
  static const EdgeInsets horizontalLionPadding =
      EdgeInsets.symmetric(horizontal: 20);
}

class ImageLion {
  final String lionImage = "assets/png/The-Lion-King-PNG-Pic.png";
}
