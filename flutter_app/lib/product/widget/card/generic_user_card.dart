import 'package:flutter/material.dart';
import 'package:flutter_app/Level_3/generic_learn.dart';

class GenericUserCard extends StatelessWidget {
  const GenericUserCard({super.key, required this.model});
  final GenericUser model;
  @override
  Widget build(BuildContext context) {
    return Text(model.name);
  }
}
