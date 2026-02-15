import 'package:go_router/go_router.dart';
import 'package:spotify_app/presentation/splash/view/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kHookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
    ],
  );
}
