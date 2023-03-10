import 'package:flutter/material.dart';

import 'package:flutter_app/Level_2/Package/loading_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onSecondary,
        onPressed: () {
          canLaunchUrl('https://pub.dev/packages/url_launcher');
        },
      ),
      body: Column(
        children: [
          Text('aaaa', style: Theme.of(context).textTheme.subtitle1),
          const SizedBox(height: 100),
          SpinKitSquareCircle(
            color: Colors.red,
            size: 50.0,
            controller: AnimationController(
                vsync: this, duration: const Duration(milliseconds: 1200)),
          ),
          const SizedBox(height: 50),
          loadingBarOne(),
        ],
      ),
    );
  }
}

Future<void> canLaunchUrl(String url) async {
  var url = Uri.parse('https://pub.dev/packages/url_launcher');
  if (!await launchUrl(url)) {
    await launchUrl(url);
  }
}
