import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          // FittedBox Oldugu yere tam sıgmasını saglıyor
          FittedBox(
            child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headline1,
              maxLines: 1,
            ),
          ),
          Container(
            color: Colors.blue.shade100,
            height: 300,
          ),
          const Divider(
            color: Colors.green,
            endIndent: 20,
            indent: 20,
            thickness: 4,
          ),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: false,
              //shrnikWrap Kullanımı Dogru degıl Çok kullanma !!!!
              children: [
                Container(color: Colors.amber, width: 100),
                Container(color: Colors.white, width: 100),
                Container(color: Colors.amber, width: 100),
                Container(color: Colors.white, width: 100),
                Container(color: Colors.amber, width: 100),
                Container(color: Colors.white, width: 100),
              ],
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.close))
        ],
      ),
    );
  }
}
