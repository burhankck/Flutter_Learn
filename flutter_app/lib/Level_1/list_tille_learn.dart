import 'package:flutter/material.dart';
import 'package:flutter_app/core/random_image.dart';

class ListTileLEarn extends StatelessWidget {
  const ListTileLEarn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: RandomImage(),

                  // dense: true,  sıkıstırmaya saglıyor kendi padding ile.
                  shape: const StadiumBorder(),

                  onTap: () {},
                  subtitle:
                      const Center(child: const Text('Do you like this ?')),
                  leading: const Icon(Icons.money), // sol tarafina
                  trailing: Container(
                    color: Colors.red,
                    child: const SizedBox(
                        width: 20, child: Icon(Icons.chevron_right)),
                  ), // sag tarafi
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: RandomImage(),

                  // dense: true,  sıkıstırmaya saglıyor kendi padding ile.
                  shape: const StadiumBorder(),

                  onTap: () {},
                  subtitle:
                      const Center(child: const Text('Do you like this ?')),
                  leading: const Icon(Icons.money), // sol tarafina
                  trailing: Container(
                    color: Colors.red,
                    child: const SizedBox(
                        width: 20, child: Icon(Icons.chevron_right)),
                  ), // sag tarafi
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
