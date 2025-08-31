import 'package:booky_app/constant.dart';
import 'package:booky_app/core/utils/appRoute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Futures/splash/presentasion/view/splash_view.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        brightness: Brightness.dark,
        textTheme: GoogleFonts.montserratAlternatesTextTheme(
          ThemeData.dark().textTheme,
        ),
      ),
    );
  }
}
