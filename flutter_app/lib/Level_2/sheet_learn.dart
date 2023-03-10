import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_app/Level_1/image_learn.dart';
import 'package:flutter_app/Level_1/list_view_learn.dart';

class SheetLearn extends StatefulWidget {
  const SheetLearn({super.key});

  @override
  State<SheetLearn> createState() => _SheetLearnState();
}

class _SheetLearnState extends State<SheetLearn> with PrductSheetMixin {
  Color _backgroundColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundColor,
      body: Center(
        child: TextButton(
            onPressed: () {
              showCustomSheet(context, const ListViewLearn());
            },
            child: Text('Showww')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showModalBottomSheet(
            context: context,

            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
            isScrollControlled: true,
            // full screen açılır.
            builder: (context) {
              return _CustomSheet(backgroundColor: _backgroundColor);
            },
          );

          if (result is bool) {
            setState(() {
              _backgroundColor = Colors.cyan;
            });
          }
        },
        child: const Icon(Icons.share),
      ),
    );
  }
}

class _CustomSheet extends StatefulWidget {
  const _CustomSheet({
    Key? key,
    required Color backgroundColor,
  }) : super(key: key);

  @override
  State<_CustomSheet> createState() => _CustomSheetState();
}

class _CustomSheetState extends State<_CustomSheet> {
  Color _backgroundColor = Colors.transparent;
  final _gripHeight = 32.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: _gripHeight,
              child: Stack(
                children: [
                  Divider(
                    color: Colors.blue.shade400,
                    thickness: 3,
                    indent: MediaQuery.of(context).size.width * 0.45,
                    endIndent: MediaQuery.of(context).size.width * 0.45,
                  ),
                  Positioned(
                    right: 15,
                    top: 5,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Padding(
                        padding: PaddingALL.paddingLowALL,
                        child: Icon(Icons.close_rounded),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text('data'),
            Image.network(
              'https://picsum.photos/200',
              height: 200,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop<bool>(true);
                  setState(() {
                    _backgroundColor = Colors.amber;
                  });
                },
                child: Text('OK'))
          ],
        ),
      ),
    );
  }
}

mixin PrductSheetMixin {
  Future<T?> showCustomSheet<T>(BuildContext context, Widget child) async {
    return showModalBottomSheet<T>(
      context: context,

      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(40))),

      // full screen açılır.
      builder: (context) {
        return _CustomMainSheet(child: child);
      },
    );
  }
}

class _CustomMainSheet extends StatelessWidget {
  const _CustomMainSheet({super.key, required this.child});
  final Widget child;

  final _gripHeight = 32.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [_BaseSheetHeader(), Expanded(child: child)],
      ),
    );
  }
}

class _BaseSheetHeader extends StatelessWidget {
  const _BaseSheetHeader({
    super.key,
  }) : _gripHeight = 32;

  final double _gripHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _gripHeight,
      child: Stack(
        children: [
          Divider(
            color: Colors.blue.shade400,
            thickness: 3,
            indent: MediaQuery.of(context).size.width * 0.45,
            endIndent: MediaQuery.of(context).size.width * 0.45,
          ),
          Positioned(
            right: MediaQuery.of(context).size.width * 0.01,
            top: 5,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Padding(
                padding: PaddingALL.paddingLowALL,
                child: Icon(Icons.close_rounded),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PaddingALL {
  static const paddingLowALL = EdgeInsets.all(8);
}
