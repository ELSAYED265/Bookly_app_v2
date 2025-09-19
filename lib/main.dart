import 'package:booky_app/Futures/home/Data/repos/home_repo_imp.dart';
import 'package:booky_app/Futures/home/presentation/manger/featureBookCubit/feature_book_cubit.dart';
import 'package:booky_app/Futures/home/presentation/manger/newestBookCubit/newest_book_cubit.dart';
import 'package:booky_app/constant.dart';
import 'package:booky_app/core/utils/appRoute.dart';
import 'package:booky_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Futures/home/Data/repos/home.repo.dart';
import 'Futures/splash/presentasion/view/splash_view.dart';

void main() {
  setup();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeatureBookCubit(getIt.get<HomeRepo>())..fetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBookCubit(getIt.get<HomeRepo>())..fetchNewestBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData(
          scaffoldBackgroundColor: kPrimaryColor,
          brightness: Brightness.dark,
          textTheme: GoogleFonts.montserratAlternatesTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
