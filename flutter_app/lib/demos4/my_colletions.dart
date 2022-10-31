import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(
          imagePath: ImageProject.imageCollection, title: 'Ankara', price: 3.4),
      CollectionModel(
          imagePath: ImageProject.imageCollection, title: 'Ankara', price: 3.4),
      CollectionModel(
          imagePath: ImageProject.imageCollection, title: 'Ankara', price: 3.4),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (context, index) {
          return _CategoryCard(
            model: _items[index],
          );
        },
      ),
    );
  }
}

class ImageProject {
  static const imageCollection = "assets/png/ankara.jpg";
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      color: Colors.red.shade300,
      child: SizedBox(
        height: SizedboxUtility().sizedBoxColumn,
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                _model.imagePath,
                height: 180,
                width: 400,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: paddingUtility().paddingTop,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_model.title),
                  Text('${_model.price} eth'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class paddingUtility {
  final paddingTop = const EdgeInsets.all(8);
}

class SizedboxUtility {
  final double sizedBoxColumn = 200;
}

class Imagesize {
  final double height = 180;
  final double width = 400;
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}
