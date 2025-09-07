import 'package:booky_app/Futures/Search/presetation/view/Widget/search_view_body.dart';
import 'package:booky_app/Futures/Search/presetation/view/search_view.dart';
import 'package:booky_app/Futures/home/presentation/view/BookDetailsView.dart';
import 'package:booky_app/Futures/home/presentation/view/Home_view.dart';
import 'package:booky_app/Futures/splash/presentasion/view/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const String homeview = "/homeView";
  static const String BookDetails = "/BookDetails";
  static const String searchView = "/SearchView";

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: homeview, builder: (context, state) => HomeView()),
      GoRoute(
        path: BookDetails,
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(path: searchView, builder: (context, state) => SearchView()),
    ],
  );
}
