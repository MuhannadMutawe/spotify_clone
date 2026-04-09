import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/domain/usecases/song/get_user_favorite_songs_use_case.dart';
import 'package:spotify_app/presentation/profile/manger/get_user_favorite_songs/get_user_favorite_songs_state.dart';

class GetUserFavoriteSongsCubit extends Cubit<GetUserFavoriteSongsState> {
  GetUserFavoriteSongsCubit(this.getUserFavoriteSongsUseCase)
    : super(GetUserFavoriteSongsState.initial());

  final GetUserFavoriteSongsUseCase getUserFavoriteSongsUseCase;

  Future<void> getUserFavoriteSongs() async {
    emit(GetUserFavoriteSongsState.loading());
    final result = await getUserFavoriteSongsUseCase.call();
    result.fold(
      (failure) => emit(GetUserFavoriteSongsState.failure(failure)),
      (songs) => emit(GetUserFavoriteSongsState.success(songs)),
    );
  }
}
