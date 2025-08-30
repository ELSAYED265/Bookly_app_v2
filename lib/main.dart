import 'package:booky_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Futures/splash/presentasion/view/splash_view.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: SplashView(),
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        brightness: Brightness.dark,
      ),
    );
  }
}
