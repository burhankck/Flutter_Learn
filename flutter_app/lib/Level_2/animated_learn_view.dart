import 'package:flutter/material.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView>
    with TickerProviderStateMixin {
  @override
  late AnimationController controller;
  bool _isVisible = false;
  bool _isOpacity = false;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: _DurationItems.durationLow);
    super.initState();
  }

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: _animetedPlaceHolder()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeVisible();
          controller.animateTo(1);
        },
      ),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
                duration: _DurationItems.durationLow,
                opacity: _isOpacity ? 1 : 0,
                child: Text('data')),
            trailing: IconButton(
                onPressed: () {
                  _changeOpacity();
                },
                icon: const Icon(Icons.present_to_all)),
          ),
          AnimatedDefaultTextStyle(
              child: Text('aaa'),
              style: (_isVisible
                      ? context.textTheme().headline1
                      : context.textTheme().subtitle1) ??
                  const TextStyle(),
              duration: _DurationItems.durationLow),
          AnimatedIcon(icon: AnimatedIcons.menu_close, progress: controller),
          AnimatedContainer(
            duration: _DurationItems.durationLow,
            height: _isVisible ? 0 : MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 0.2,
            color: Colors.blue,
            margin: EdgeInsets.all(20),
          ),
          Expanded(
              child: Stack(
            children:  const  [
              AnimatedPositioned(
                  top: 30, curve: Curves.easeInOut,
                  child: Text('data'),
                  duration: _DurationItems.durationLow)
            ],
          )),
          Expanded(child: AnimatedList(
            itemBuilder: (context, index, animation) {
              return const Text('data');
            },
          ))
        ],
      ),
      // Text('data', style: context.textTheme().headline1),
      //Theme.of(context).textTheme.subtitle1),
    );
  }

  AnimatedCrossFade _animetedPlaceHolder() {
    return AnimatedCrossFade(
      firstChild: Placeholder(),
      secondChild: SizedBox.shrink(),
      duration: _DurationItems.durationLow,
      crossFadeState:
          _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  static const durationLow = Duration(seconds: 1);
}
