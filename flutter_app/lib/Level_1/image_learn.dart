import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Apple Book'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 350,
            width: 400,
            child: PngImage(path: ImageItems().appleBookWithPath),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: Image.network(
              "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Apple-book.svg/1018px-Apple-book.svg.png",
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.abc_outlined),
            ),
          ),
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleBook = "assets/png/Apple-Book-Transparent-Background.png";
  final String appleBookWithPath = "Apple-Book-Transparent-Background";
}

class PngImage extends StatelessWidget {
  const PngImage({
    Key? key,
    required this.path,
  }) : super(key: key);
  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_pathWithMethod, fit: BoxFit.cover);
  }

  String get _pathWithMethod => 'assets/png/$path.png';
}
