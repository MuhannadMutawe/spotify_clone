import 'package:go_router/go_router.dart';
import 'package:spotify_app/presentation/auth/views/signin_view.dart';
import 'package:spotify_app/presentation/auth/views/signup_or_signin_view.dart';
import 'package:spotify_app/presentation/auth/views/signup_view.dart';
import 'package:spotify_app/presentation/choose_mode/view/choose_mode_view.dart';
import 'package:spotify_app/presentation/intro/views/get_started_view.dart';
import 'package:spotify_app/presentation/splash/view/splash_view.dart';

abstract class AppRouter {
  static const kGetStartedView = '/kGetStartedView';
  static const kChooseModeView = '/kChooseModeView';
  static const kSignUpOrSignInView = '/kSignUpOrSignInView';
  static const kSignUpView = '/kSignUpView';
  static const kSignInView = '/kSignInView';
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
      GoRoute(
        path: kChooseModeView,
        builder: (context, state) => const ChooseModeView(),
      ),
      GoRoute(
        path: kSignUpOrSignInView,
        builder: (context, state) => const SignUpOrSignInView(),
      ),
      GoRoute(
        path: kSignInView,
        builder: (context, state) => const SigninView(),
      ),
      GoRoute(
        path: kSignUpView,
        builder: (context, state) => const SignupView(),
      ),
    ],
  );
}
