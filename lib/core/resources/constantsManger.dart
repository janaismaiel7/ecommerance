import 'dart:ui';

class AppConstans {
  static const String delete = 'Delete';
  static const String baseUrl =
      'https://ecommerce.routemisr.com/api/v1/auth/signup';
  static const String searchHint = 'What do you Search For?';
  static const String addToCart = 'Add To Cart';

  static List<Map<String, dynamic>> favoritesProduct = [
    {
      'title': "Nike Air Jordon",
      'finalPrice': '1,200',
      'color': const Color.fromARGB(255, 23, 23, 24),
      'imgeUrl': "",
      'salesPrice': "1,500",
    }
  ];
}
