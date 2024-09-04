import 'package:ecommerance/core/routesManger/routes.dart';
import 'package:ecommerance/features/splash/splashScreen.dart';
import 'package:flutter/material.dart';

class Routegenrator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.cartRoute:
        return MaterialPageRoute(builder: (_) => const cartScreen());

      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const cartScreen());

      case Routes.productScreenRoute:
        return MaterialPageRoute(builder: (_) => const cartScreen());

      case Routes.productDetails:
        return MaterialPageRoute(builder: (_) => const cartScreen());

      case Routes.signInRoute:
        return MaterialPageRoute(builder: (_) => const cartScreen());

      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => const cartScreen());

      case Routes.splashScreenRoute:
        return MaterialPageRoute(builder: (_) => const Splashscreen());

      case Routes.wishRoute:
        return MaterialPageRoute(builder: (_) => const cartScreen());

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text('No Route Found'),
              ),
              body: const Center(
                child: Text(' No Route Found'),
              ),
            ));
  }
}
