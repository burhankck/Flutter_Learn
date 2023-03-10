import 'package:flutter/material.dart';
import 'package:flutter_app/product/global/resource_context.dart';
import 'package:provider/provider.dart';

class ImageLearnLevel2 extends StatefulWidget {
  const ImageLearnLevel2({super.key});

  @override
  State<ImageLearnLevel2> createState() => _ImageLearnLevel2State();
}

class _ImageLearnLevel2State extends State<ImageLearnLevel2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                context.read<ResourceContext>().clear();
              },
              icon: const Icon(Icons.remove))
        ],
        title: Text(
            context.read<ResourceContext>().model?.data?.length.toString() ??
                ''),
      ),
      body: Column(
        children: [
          SizedBox(height: 150),
          Image.asset(ImagePathEnum.agac.path()),
          ImagePathEnum.agac.toWidget(height: 100),
        ],
      ),
    );
  }
}

enum ImagePathEnum { agac }

extension ImagePathExtension on ImagePathEnum {
  String path() {
    return 'assets/png/$name.png';
  }

  Widget toWidget({double height = 24}) {
    return Image.asset(path(), height: height);
  }
}
