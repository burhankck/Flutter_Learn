enum LottieItems { themeChange }

extension LottieItemsExtension on LottieItems {
  String _path() {
    switch (this) {
      case LottieItems.themeChange:
        return 'Lottie_Theme_Change';
    }
  }
  String get  lottiePath  => 'assets/lottie/${_path()}.json';

}
