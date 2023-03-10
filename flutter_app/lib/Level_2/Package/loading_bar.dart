import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBars extends StatelessWidget {
  const LoadingBars({super.key});

  @override
  Widget build(BuildContext context) {
    return loadingBarOne();
  }
}

class loadingBarOne extends StatelessWidget {
  const loadingBarOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpinKitCubeGrid(
      color: Colors.blue,
      size: 50.0,
    );
  }
}
