import 'dart:async';

import 'package:ecommerance/core/resources/assetsManger.dart';
import 'package:ecommerance/core/routesManger/routes.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, Routes.signInRoute);
    });
    return Scaffold(
      body: Image.asset(
        ImageAssets.splashScreen,
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
