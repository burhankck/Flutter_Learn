import 'package:flutter/material.dart';
import 'package:flutter_app/product/constant/duration_items.dart';
import 'package:flutter_app/product/constant/lottie_items.dart';
import 'package:flutter_app/product/global/theme_notifier.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class LottieLearn extends StatefulWidget {
  const LottieLearn({super.key});

  @override
  State<LottieLearn> createState() => _LottieLearnState();
}

class _LottieLearnState extends State<LottieLearn>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool isLight = false;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: DurationItems.durationNormal());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
              onTap: () async {
                await controller.animateTo(isLight ? 0.5 : 1);
               
                isLight = !isLight;
                Future.microtask(() {
                  context.read<ThemeNotifier>().changeTheme();
                });
              },
              child: Lottie.asset(LottieItems.themeChange.lottiePath,
                  fit: BoxFit.contain, repeat: false, controller: controller))
        ],
      ),
      body: _LoadingLottie(),
    );
  }
}

class _LoadingLottie extends StatelessWidget {
  const _LoadingLottie({
    super.key,
  });
  final _loadinglottie =
      'https://assets4.lottiefiles.com/packages/lf20_nwgje0cj.json';
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Lottie.network(
      _loadinglottie,
    ));
  }
}
