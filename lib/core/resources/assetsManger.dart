const String imagePath = 'assets/images';
const String jsonPath = 'assets/json';
const String iconsPath = 'assets/icons';
const String svgPath = 'assets/svg_images';

abstract class ImageAssets {
  static const String routeLogo = '$imagePath/splash_logo.png';
  static const String splashScreen = '$imagePath/splash_screen.png';
  static const String categoryCardImage = '$imagePath/category_card_image.png';
  static const String subCategoryCardImage =
      '$imagePath/sub_category_card_image.png';
  static const String carouseLSLiderl = '$imagePath/CarouselSlider1.png';
}

class SvgAssets {
  static const String routeLogo = '$svgPath/route.svg';
}

abstract class IconsAsstes {
  static const String _icCategory = '$iconsPath/ic_category.png';
}
