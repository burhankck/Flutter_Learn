import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) { 
            return SizedBox(
              height: 50,
              child: Column(
                children: [
                  Expanded(
                    child: Image.network(
                      'https://picsum.photos/200',
                    ),
                  ),
                  Text('$index'),
                ],
              ),
            );
          },
          itemCount: 15,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              thickness: 5,
            );
          },
        ));
  }
}
