import 'dart:developer';

import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({super.key});

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // showAboutDialog(
          //     context: context,
          //     applicationName: 'Tıkla Gör',
          //     children: [const Text('Datalar')]);
          final response = await showDialog(
              context: context,
              barrierDismissible: true,
              // Dialog dışı yerlere tıklama yapılamasın diye false yapıyoruz.
              builder: (context) {
                return _ImageZoomDialog();
              });
        },
      ),
      appBar: AppBar(),
    );
  }
}

class _UpdateDialog extends StatelessWidget {
  const _UpdateDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Version Update!'),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: const Text('Update')),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close'))
      ],
    );
  }
}

class Keys {
  static const version = 'Version Update !';
  static const close = 'Close';
}

class UpdateDialog extends AlertDialog {
  UpdateDialog({Key? key, required BuildContext context})
      : super(
          key: key,
          title: Text(Keys.version),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: const Text('Update')),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(Keys.close))
          ],
        );
}

class _ImageZoomDialog extends StatelessWidget {
  const _ImageZoomDialog({
    super.key,
  });
  final String _url = 'https://picsum.photos/200';
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: InteractiveViewer(
        child: Image.network(
          _url,
          height: MediaQuery.of(context).size.height * 0.6,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
