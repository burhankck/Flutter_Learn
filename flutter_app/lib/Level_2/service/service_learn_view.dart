import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Level_2/service/post_model.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({super.key});

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<NewModels>? _items;
  String? name;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    // fetchPostItems();
    name = 'Burhan Koçak';
  }

  void _isLoadingCircle() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostItems() async {
    _isLoadingCircle();
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');

    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;
      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => NewModels.fromJson(e)).toList();
        });
      }
    }
    _isLoadingCircle();
  }
     
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name ?? ''),
        actions: [
          _isLoading
              ? const CircularProgressIndicator.adaptive()
              : const SizedBox.shrink()
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      fetchPostItems();
                    },
                    child: Text('Getir')),
              ),
            ),
            Expanded(
              flex: 9,
              child: SizedBox(
                width: double.infinity,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: _items?.length ?? 0,
                  itemBuilder: (context, index) {
                    return 
                    
                    _postCard(
                      model: _items?[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _postCard extends StatelessWidget {
  const _postCard({
    Key? key,
    this.model,
  }) : super(key: key);

  final NewModels? model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          trailing: CircleAvatar(backgroundColor: Colors.yellow),
          title: Text(model?.title ?? ''),
          subtitle: Text(model?.body ?? ''),
        ),
      ),
    );
  }
}
