import 'package:flutter/material.dart';
import 'package:flutter_app/Level_2/Package/loading_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

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
      body: Column(
        children: [
        const  SizedBox(height: 100),
          SpinKitSquareCircle(
            color: Colors.white,
            size: 50.0,
            controller: AnimationController(
                vsync: this, duration: const Duration(milliseconds: 1200)),
          ),
       const   SizedBox(height: 50),
          loadingBarOne(),
      const    SizedBox(height: 50),
          const SpinKitPianoWave(
            color: Colors.yellow,
            size: 50.0,
          ),
        ],
      ),
    );
  }
}
