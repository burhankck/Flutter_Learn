import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Level_1/list_view_builder_learn.dart';
import 'package:flutter_app/Level_2/service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
  String? name;
  late final Dio _dio;
  final _basUrl = 'https://jsonplaceholder.typicode.com';

  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _basUrl));
    name = 'Burhan Koçak';
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name ?? ''),
        ),
        body: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
            ),
            TextField(
              controller: _bodyController,
              decoration: const InputDecoration(labelText: 'Body'),
            ),
            TextField(
              controller: _userIdController,
              keyboardType: TextInputType.number,
              autofillHints: const [AutofillHints.creditCardNumber],
              decoration: const InputDecoration(labelText: 'UserId'),
            ),
            TextButton(
                onPressed: () {
                  if (_titleController.text.isNotEmpty &&
                      _bodyController.text.isNotEmpty &&
                      _userIdController.text.isNotEmpty) {
                    final model = NewModels(
                        body: _bodyController.text,
                        title: _titleController.text,
                        userId: int.tryParse(_userIdController.text));

                    
                  }
                },
                child: const Text('Send')),
          ],
        ));
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required NewModels? model,
  })  : _model = model,
        super(key: key);

  final NewModels? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}