import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBars'),
      ),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text('a' * 500),  
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 80,
            child: Text('b' * 50),
          ),
          Container(
            width: 50,
            height: 50,
            constraints: const BoxConstraints(
                maxWidth: 200, minWidth: 100, maxHeight: 100),
            child: Text('aaa' * 2),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(20),
            decoration: ProjectDeroration(),
            // ProjectDecoration1 olabilirdi iki ayri kullanim
          ),
        ],
      ),
    );
  }
}

class ProjectDecoration1 {
  static BoxDecoration boxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
    border: Border.all(width: 10, color: Colors.blue),
  );
}

class ProjectDeroration extends BoxDecoration {
  ProjectDeroration()
      : super(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
          border: Border.all(width: 10, color: Colors.blue),
        );
}
