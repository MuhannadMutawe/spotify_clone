import 'package:get_it/get_it.dart';
import 'package:spotify_app/data/repository/auth/auth_repository_implementation.dart';
import 'package:spotify_app/data/repository/song/song_repository_implementation.dart';
import 'package:spotify_app/data/sources/auth/auth_firebase_source.dart';
import 'package:spotify_app/data/sources/song/song_firebase_source.dart';
import 'package:spotify_app/domain/usecases/auth/get_user_use_case.dart';
import 'package:spotify_app/domain/usecases/auth/signin_use_case.dart';
import 'package:spotify_app/domain/usecases/auth/signup_use_case.dart';
import 'package:spotify_app/domain/usecases/song/add_or_remove_favorite_song_use_case.dart';
import 'package:spotify_app/domain/usecases/song/get_news_songs_use_case.dart';
import 'package:spotify_app/domain/usecases/song/get_play_list_use_case.dart';
import 'package:spotify_app/domain/usecases/song/get_user_favorite_songs_use_case.dart';
import 'package:spotify_app/domain/usecases/song/is_favorite_song_use_case.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<SignInUseCase>(
    SignInUseCase(
      AuthRepositoryImplementation(
        AuthFirebaseSourceImplementation(),
      ),
    ),
  );

  getIt.registerSingleton<SignupUseCase>(
    SignupUseCase(
      AuthRepositoryImplementation(
        AuthFirebaseSourceImplementation(),
      ),
    ),
  );

  getIt.registerSingleton<GetUserUseCase>(
    GetUserUseCase(
      AuthRepositoryImplementation(
        AuthFirebaseSourceImplementation(),
      ),
    ),
  );

  getIt.registerSingleton<SongRepositoryImplementation>(
    SongRepositoryImplementation(
      SongFirebaseSourceImplementation(),
    ),
  );

  getIt.registerSingleton<GetNewsSongsUseCase>(
    GetNewsSongsUseCase(
      getIt<SongRepositoryImplementation>(),
    ),
  );

  getIt.registerSingleton<GetPlayListUseCase>(
    GetPlayListUseCase(
      getIt<SongRepositoryImplementation>(),
    ),
  );

  getIt.registerSingleton<AddOrRemoveFavoriteSongUseCase>(
    AddOrRemoveFavoriteSongUseCase(
      getIt<SongRepositoryImplementation>(),
    ),
  );

  getIt.registerSingleton<IsFavoriteSongUseCase>(
    IsFavoriteSongUseCase(
      getIt<SongRepositoryImplementation>(),
    ),
  );

  getIt.registerSingleton<GetUserFavoriteSongsUseCase>(
    GetUserFavoriteSongsUseCase(
      getIt<SongRepositoryImplementation>(),
    ),
  );
}
