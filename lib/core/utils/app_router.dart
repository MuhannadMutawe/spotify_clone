import 'package:go_router/go_router.dart';
import 'package:spotify_app/presentation/intro/views/get_started_view.dart';
import 'package:spotify_app/presentation/splash/view/splash_view.dart';

abstract class AppRouter {
  static const kGetStartedView = '/kGetStartedView';
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kGetStartedView,
        builder: (context, state) => const GetStartedView(),
      ),
    ],
  );
}
