import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify_app/common/bloc/favorite_button/favorite_button_cubit.dart';
import 'package:spotify_app/domain/entities/song/song_entity.dart';
import 'package:spotify_app/domain/usecases/auth/get_user_use_case.dart';
import 'package:spotify_app/domain/usecases/auth/signin_use_case.dart';
import 'package:spotify_app/domain/usecases/auth/signup_use_case.dart';
import 'package:spotify_app/domain/usecases/song/add_or_remove_favorite_song_use_case.dart';
import 'package:spotify_app/domain/usecases/song/get_news_songs_use_case.dart';
import 'package:spotify_app/domain/usecases/song/get_play_list_use_case.dart';
import 'package:spotify_app/domain/usecases/song/is_favorite_song_use_case.dart';
import 'package:spotify_app/presentation/auth/manger/Sign_in/sign_in_cubit.dart';
import 'package:spotify_app/presentation/auth/manger/sign_up/sign_up_cubit.dart';
import 'package:spotify_app/presentation/auth/views/signin_view.dart';
import 'package:spotify_app/presentation/auth/views/signup_or_signin_view.dart';
import 'package:spotify_app/presentation/auth/views/signup_view.dart';
import 'package:spotify_app/presentation/choose_mode/view/choose_mode_view.dart';
import 'package:spotify_app/presentation/home/manger/get_play_list/get_play_list_cubit.dart';
import 'package:spotify_app/presentation/home/manger/get_news_songs/get_news_songs_cubit.dart';
import 'package:spotify_app/presentation/home/views/home_view.dart';
import 'package:spotify_app/presentation/intro/views/get_started_view.dart';
import 'package:spotify_app/presentation/profile/manger/get_user_cubit/get_user_cubit.dart';
import 'package:spotify_app/presentation/profile/view/profile_view.dart';
import 'package:spotify_app/presentation/song_player/manger/song_player/song_player_cubit.dart';
import 'package:spotify_app/presentation/song_player/view/song_player_view.dart';
import 'package:spotify_app/presentation/splash/view/splash_view.dart';
import 'package:spotify_app/setup_service_locator.dart';

abstract class AppRouter {
  static const kGetStartedView = '/kGetStartedView';
  static const kChooseModeView = '/kChooseModeView';
  static const kSignUpOrSignInView = '/kSignUpOrSignInView';
  static const kSignUpView = '/kSignUpView';
  static const kSignInView = '/kSignInView';
  static const kHomeView = '/kHomeView';
  static const kSongPlayerView = '/kSongPlayerView';
  static const kProfileView = '/kProfileView';
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
        builder: (context, state) => BlocProvider(
          create: (context) => SignInCubit(getIt<SignInUseCase>()),
          child: const SigninView(),
        ),
      ),
      GoRoute(
        path: kSignUpView,
        builder: (context, state) => BlocProvider(
          create: (context) => SignUpCubit(getIt<SignupUseCase>()),
          child: const SignupView(),
        ),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider<GetNewsSongsCubit>(
              create: (context) =>
                  GetNewsSongsCubit(getIt<GetNewsSongsUseCase>())
                    ..getNewsSongs(),
            ),
            BlocProvider<GetPlayListCubit>(
              create: (context) =>
                  GetPlayListCubit(getIt<GetPlayListUseCase>())..getPlayList(),
            ),
          ],
          child: const HomeView(),
        ),
      ),
      GoRoute(
        path: kSongPlayerView,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider<SongPlayerCubit>(
              create: (context) => SongPlayerCubit(
                songUrl: (state.extra as SongEntity).audioUrl,
              ),
            ),
            BlocProvider<FavoriteButtonCubit>(
              create: (context) => FavoriteButtonCubit(
                getIt<AddOrRemoveFavoriteSongUseCase>(),
                getIt<IsFavoriteSongUseCase>(),
              )..loadInitialState((state.extra as SongEntity).songId),
            ),
          ],
          child: SongPlayerView(songEntity: (state.extra) as SongEntity),
        ),
      ),
      GoRoute(
        path: kProfileView,
        builder: (context, state) => BlocProvider(
          create: (context) => GetUserCubit(getIt<GetUserUseCase>())..getUser(),
          child: const ProfileView(),
        ),
      ),
    ],
  );
}
