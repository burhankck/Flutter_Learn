import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar'),
      ),
      body: Column(
        children: [
          const TitleTextWidget(title: 'burhan1'),
          EmptyBox(),
          const TitleTextWidget(title: 'burhan2'),
          EmptyBox(),
          const TitleTextWidget(title: 'burhan3'),
          EmptyBox(),
          const TitleTextWidget(title: 'burhan4'),
          EmptyBox(),
          const _CustumContainer(),
          EmptyBox(),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  SizedBox EmptyBox() => const SizedBox(height: 10);
}

class _CustumContainer extends StatelessWidget {
  const _CustumContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.amber),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.title});
  final String title;

  // Stateless Widget icine sonradan degisken verme yok, veremezsin.
  // Kullanmak icin nullable yapmak gerekir ve this.title vererek final yapmamız lazım.
  // Yukarıya null donebilir bu yüzden ? kaldırıp required ataması yapıyoruz.
  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.headline3);
  }
}
